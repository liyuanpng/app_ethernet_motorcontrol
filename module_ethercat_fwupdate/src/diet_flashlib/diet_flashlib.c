#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <xclib.h>

#include "diet_flashlib.h"
#include "DeviceAccess.h"
//#include "SpecDefinitions.h"

#define FL_DEVICE_ATMEL_AT25DF041A \
{ \
    ATMEL_AT25DF041A, \
    256,                    /* page size */ \
    2048,                   /* num pages */ \
    3,                      /* address size */ \
    8,                      /* log2 clock divider */ \
    0x9F,                   /* SPI_RDID */ \
    0,                      /* id dummy bytes */ \
    3,                      /* id size in bytes */ \
    0x1f4401,               /* device id */ \
    0x20,                   /* SPI_BE4 */ \
    4096,                   /* Sector erase is always 4KB */ \
    0x06,                   /* SPI_WREN */ \
    0x04,                   /* SPI_WRDI */ \
    PROT_TYPE_SECS,         /* no protection */ \
    {{0,0},{0x36,0x39}},    /* SPI_SP, SPI_SU */ \
    0x02,                   /* SPI_PP */ \
    0x0B,                   /* SPI_READ_FAST */ \
    1,                      /* 1 read dummy byte */ \
    SECTOR_LAYOUT_IRREGULAR,  /* mad sectors */ \
    {0,{11,{8,8,8,8,8,8,8,7,5,5,6}}},  /* regular sector sizes */ \
    0x05,                   /* SPI_RDSR */ \
    0x01,                   /* SPI_WRSR */ \
    0x01,                   /* SPI_WIP_BIT_MASK */ \
}

#define IMAGETAG (0x1a551e5)
#define IMAGETAG_13 (0x0FF51DE)

#define MAX_PAGE_SIZE 256

static unsigned int sortBits( unsigned int bits )
{
  return( byterev(bitrev(bits)) );
}

static void fl_initProtection(void);

static int getSectorAtOrAfter(unsigned address);
static int getSectorContaining(unsigned address);

static const fl_DeviceSpec* g_flashAccess = NULL;
fl_SPIPorts g_portHolder;

static const fl_DeviceSpec fl_deviceSpecs[] = FL_DEVICE_ATMEL_AT25DF041A;

/* Basic information.
*/
static unsigned int fl_int_bootPartitionSize = 0x0;


//##############################################################################
/* Enable or disable writing to the device. */
int fl_setWritability( int enable )
{
  fl_int_issueShortCommand( enable?g_flashAccess->writeEnableCommand:g_flashAccess->writeDisableCommand, 0, 0, 0, 0 );
  return( 0 );
}

/* Get the page size (in bytes). */
unsigned fl_getPageSize()
{
  return( g_flashAccess->pageSize );
}

/* Get the size (in bytes) of a particular sector. */
int fl_getSectorSize( int sectorNum )
{
  int res=0;
  switch( g_flashAccess->sectorLayout )
  {
  case SECTOR_LAYOUT_REGULAR:
    res = g_flashAccess->sectorSizes.regularSectorSize;
    break;
  case SECTOR_LAYOUT_IRREGULAR:
    res = fl_getPageSize() << g_flashAccess->sectorSizes.irregularSectorSizes.sectorSizesLog2[sectorNum];
    break;
  default:
    break;
  }
  return( res );
}

/* Get the address of a particular sector. */
int fl_getSectorAddress( int sectorNum )
{
  int res=0;
  switch( g_flashAccess->sectorLayout )
  {
  case SECTOR_LAYOUT_REGULAR:
    res = g_flashAccess->sectorSizes.regularSectorSize * sectorNum;
    break;
  case SECTOR_LAYOUT_IRREGULAR:
  {
    int countNum=0;
    while( countNum < sectorNum )
    {
      res += fl_getPageSize() << g_flashAccess->sectorSizes.irregularSectorSizes.sectorSizesLog2[countNum++];
    }
    break;
  }
  default:
    break;
  }
  return( res );
}

/* Erase a sector. */
static int fl_eraseSectorAsync(int sectorNum)
{
  unsigned secAddr = fl_getSectorAddress(sectorNum);
  unsigned secSize = fl_getSectorSize(sectorNum);
  unsigned sectorEraseSize = g_flashAccess->sectorEraseSize;
  if (sectorEraseSize == 0) {
    sectorEraseSize = secSize;
  }
  fl_setWritability(1);
  fl_int_issueShortCommand(g_flashAccess->sectorEraseCommand, secAddr, 3, 0, 0);
  secSize -= sectorEraseSize;
  secAddr += sectorEraseSize;
  while (secSize > 0) {
    fl_int_waitWhileWriting( g_flashAccess);
    fl_setWritability(1);
    fl_int_issueShortCommand(g_flashAccess->sectorEraseCommand, secAddr, 3, 0, 0);
    secSize -= sectorEraseSize;
    secAddr += sectorEraseSize;
  }
  return 0;
}

/* Erase a sector. */
int fl_eraseSector( int sectorNum )
{
  int res = fl_eraseSectorAsync(sectorNum);
  fl_int_waitWhileWriting( g_flashAccess);
  fl_setWritability(0);
  return res;
}

/* Read a page at the given address. */
int fl_readPage( unsigned int address, unsigned char data[] )
{
  return( fl_int_readBytes( g_flashAccess, address, data, fl_getPageSize() ) );
}

unsigned fl_getNumDataPages(void)
{
  return fl_getDataPartitionSize() / fl_getPageSize();
}

/* Returns the size of the boot partition. */
unsigned int fl_getBootPartitionSize()
{
  return( fl_int_bootPartitionSize ? fl_int_bootPartitionSize : fl_getFlashSize() );
}




/* Protect/unprotect a sector. */
int fl_setSectorProtection( int sectorNum, int protect )
{
  if( g_flashAccess->protectionType == PROT_TYPE_SECS )
  {
    unsigned int secAddr = fl_getSectorAddress(sectorNum);
    fl_setWritability(1);
    fl_int_issueShortCommand(
      protect ? g_flashAccess->protection.commandValues.sectorProtectCommand : g_flashAccess->protection.commandValues.sectorUnprotectCommand,
      secAddr, 3, 0, 0);
    fl_int_waitWhileWriting(g_flashAccess);
  }
  return(0);
}

/* Returns information about the first boot image (the factory image). */
int fl_getFactoryImage( fl_BootImageInfo* bootImageInfo )
{
  unsigned tmpBuf[9];
  fl_int_readBytes(g_flashAccess, 0, (unsigned char*)tmpBuf, 4);
  unsigned startAddr = (sortBits(tmpBuf[0])+2)<<2; /* Normal case. */
  fl_int_readBytes(g_flashAccess, startAddr, (unsigned char*)tmpBuf, (6 + 3) * sizeof(int));
  unsigned *header = tmpBuf;
  unsigned int image13 = 0;
  if (sortBits(tmpBuf[0]) != IMAGETAG) {
    if (sortBits(tmpBuf[0]) != IMAGETAG_13) {
      header += 3; /* Secure case. */
      if (sortBits(header[0]) != IMAGETAG) {
        if (sortBits(header[0]) != IMAGETAG_13) {
          return 1;
        }
        else {
          image13 = 1;
        }
      }
    }
    else {
      image13 = 1;
    }

  }

  /* Image headers changed format in  tools 13*/
  bootImageInfo->startAddress = startAddr;
  bootImageInfo->size         = (image13) ? sortBits(header[6]) : sortBits(header[5]);  /* Size is to next sector start. */
  bootImageInfo->version      = (image13) ? sortBits(header[5]) : sortBits(header[4]);
  bootImageInfo->factory      = 1;

  return 0;
}

/* Get the number of sectors. */
int fl_getNumSectors()
{
  int res = 0;
  switch( g_flashAccess->sectorLayout )
  {
  case SECTOR_LAYOUT_REGULAR:
    res = fl_getFlashSize() / g_flashAccess->sectorSizes.regularSectorSize;
    break;
  case SECTOR_LAYOUT_IRREGULAR:
    res = g_flashAccess->sectorSizes.irregularSectorSizes.sectorCount;
    break;
  }
  return( res );
}

/**
 * Unprotect everything apart from the factory image. If it is not possible
 * to leave the factory image protected without leaving the the entire device
 * protected then the entire device is unprotected. On some devices
 * (e.g. ATMEL_AT25FS010) all sectors are protected after power cycling.
 * We don't want the user to have to unset protection in order to write an
 * upgrade image and we don't want have to unprotect before every write call.
 */
static void fl_initProtection(void)
{
  if (g_flashAccess->protectionType != PROT_TYPE_SECS) {
    // Not possible to protect just the factory image.
    fl_setProtection(0);
    return;
  }
  fl_BootImageInfo bfi;
  if (fl_getFactoryImage(&bfi) != 0) {
    // No factory image to protect.
    fl_setProtection(0);
  }
  int firstUnprotectedSector = getSectorAtOrAfter(bfi.startAddress + bfi.size);
  int numSectors = fl_getNumSectors();
  int i;
  for (i = firstUnprotectedSector; i < numSectors; i++) {
    fl_setSectorProtection(i, 0);
  }
}

/* Sets the size of the boot partition. */
unsigned int fl_setBootPartitionSize( unsigned int s )
{
  int sNum, sLimit=fl_getNumSectors();
  int notFound=1;
  if( s == fl_getFlashSize() )
  {
    fl_int_bootPartitionSize = 0;
    notFound = 0;
  }
  else
  {
    for( sNum=0; sNum<sLimit; sNum++ )
    {
      if( fl_getSectorAddress(sNum) == s )
      {
        fl_int_bootPartitionSize = s;
        notFound = 0;
        break;
      }
    }
  }
  return( notFound );
}

/* Gets the capacity in bytes of the flash. */
unsigned fl_getFlashSize()
{
  return( g_flashAccess->numPages*g_flashAccess->pageSize );
}



//##############################################################################


/* Connect to the SPI (i.e. initialise). */
int fl_connectToDevice( fl_SPIPorts* pHolder, const fl_DeviceSpec* deviceSpecPtr, unsigned int specCount )
{
  g_portHolder = *pHolder;
  fl_int_spiMasterInit();
  int found = 0;
  while( specCount > 0 )
  {
    fl_int_spiInit(deviceSpecPtr->clockDiv);
    if( fl_int_issueShortCommand( deviceSpecPtr->idCommand, 0, 0, deviceSpecPtr->idDummyBytes, deviceSpecPtr->idBytes ) == deviceSpecPtr->idValue )
    {
      g_flashAccess = deviceSpecPtr;
      found = 1;
      break;
    }
    deviceSpecPtr++;
    specCount--;
  }
  if( found )
  {
    unsigned int bootPartSize;
    fl_int_readBytes( g_flashAccess, 12, (unsigned char*)&bootPartSize, 4 );
    bootPartSize = bitrev(byterev(bootPartSize));
    if( bootPartSize != 0 )
    {
      fl_setBootPartitionSize( bootPartSize );
    }
    else
    {
      fl_setBootPartitionSize( fl_getFlashSize() );
    }
    fl_initProtection();
  }
  return( found==0 );
}

int fl_connect( fl_SPIPorts* pHolder )
{
  return( fl_connectToDevice( pHolder, fl_deviceSpecs, sizeof(fl_deviceSpecs) / sizeof(fl_DeviceSpec) ) );
}

/* Protect the device as much as possible without making it irreversible. */
int fl_setProtection( int protect )
{
  switch( g_flashAccess->protectionType )
  {
  case PROT_TYPE_NONE:
    break;
  case PROT_TYPE_SR:
  case PROT_TYPE_SR_2X:
  {
    unsigned int cmd = g_flashAccess->writeSRCommand;
    for( int i=0, iL=((g_flashAccess->protectionType==PROT_TYPE_SR_2X)?2:1); i<iL; i++ )
    {
      fl_setWritability(1);
      if( (cmd>>8) != 0 )
      {
        fl_int_issueShortCommand( (cmd>>8)&0xff, 0, 0, 0, 0);
        cmd &= 0xff;
      }
      fl_int_issueShortCommand( cmd, protect ? g_flashAccess->protection.statusBits.setProtectedValue : g_flashAccess->protection.statusBits.setUnprotectedValue, 1, 0, 0);
      fl_int_waitWhileWriting(g_flashAccess);
    }
    break;
  }
  case PROT_TYPE_SECS:
  {
    int secNum;
    int numSectors = fl_getNumSectors();
    for(secNum=0; secNum<numSectors; secNum++) {
      fl_setSectorProtection(secNum, protect);
    }
    break;
  }
  default:
    return(1);
  }
  return( 0 );
}

/* Clear the whole thing. */
int fl_eraseAll()
{
  int numSecs = fl_getNumSectors();
  int i;
  for( i=0; i<numSecs; i++ )
  {
    fl_eraseSector(i);
  }
  return( 0 );
}

static int fl_writePageAsync(unsigned address, const unsigned char data[])
{
  int res;
  if ((address & (g_flashAccess->pageSize - 1)) != 0)
    return 1;
  fl_setWritability(1);
  res = fl_int_programPageAsync(g_flashAccess, address, data);
  return res;
}

/* Program a page at the given address. */
int fl_writePage( unsigned int address, const unsigned char data[] )
{
  int res = fl_writePageAsync(address, data);
  fl_int_waitWhileWriting(g_flashAccess);
  fl_setWritability(0);
  return res;
}

unsigned int fl_getDataPartitionSize()
{
  return( fl_getFlashSize()-fl_getBootPartitionSize() );
}


int fl_eraseAllDataSectors(void)
{
  int sector = getSectorContaining(fl_getBootPartitionSize());
  if (sector < 0)
    return 0;
  int numSectors = fl_getNumSectors();
  for (; sector < numSectors; sector++) {
    if (fl_eraseSector(sector) != 0)
      return 1;
  }
  return 0;
}

int fl_writeDataPage(unsigned n, const unsigned char data[])
{
  unsigned address;
  if( n >= fl_getNumDataPages() ) { return( 1 ); }
  address = fl_getBootPartitionSize() + n * fl_getPageSize();
  return fl_writePage(address, data);
}

int fl_readDataPage(unsigned n, unsigned char dst[])
{
  unsigned address;
  if( n >= fl_getNumDataPages() ) { return( 1 ); }
  address = fl_getBootPartitionSize() + n * fl_getPageSize();
  return fl_readPage(address, dst);
}


