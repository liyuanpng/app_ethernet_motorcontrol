/*
 * Copyright (C) XMOS Limited 2010
 *
 * The copyrights, all other intellectual and industrial property rights are
 * retained by XMOS and/or its licensors.
 *
 * The code is provided "AS IS" without a warranty of any kind. XMOS and its
 * licensors disclaim all other warranties, express or implied, including any
 * implied warranty of merchantability/satisfactory quality, fitness for a
 * particular purpose, or non-infringement except to the extent that these
 * disclaimers are held to be legally invalid under applicable law.
 *
 * Version: <version>
 */

#ifndef _diet_flash_h_
#define _diet_flash_h_
#include <xs1_clock.h>

#ifdef __cplusplus
extern "C" {
#endif

/**
 * \file flash.h
 * \brief SPI Flash device access functions.
 *
 * This file contains functions to access SPI Flash devices.
 */

/* General Operations. */

/** Enum for the type of protection on a flash device. */
typedef enum {
  PROT_TYPE_NONE=0, /**< No protection. */
  PROT_TYPE_SR=1,   /**< Device can be protected by writing the status register. */
  PROT_TYPE_SECS=2,  /**< Device has commands for protecting individual sectors. */
  PROT_TYPE_SR_2X=3,   /**< Device can be protected by writing the status register (need double write). */
} fl_ProtectionType;

/** Enum for the type of sector layout on a flash device. */
typedef enum {
  SECTOR_LAYOUT_REGULAR=0, /**< All sectors the same size. */
  SECTOR_LAYOUT_IRREGULAR  /**< Sectors have different sizes. */
} fl_SectorLayout;

/** Struct containing properties of a flash device. */
typedef struct {
  /** The value to return from fl_getFlashType(). */
  unsigned flashId;
  /** The page size in bytes. */
  unsigned pageSize;
  /** The number of pages. */
  unsigned numPages;
  /** The number of address bytes to send. */
  unsigned char addrSize;
  /** The divider used to generate the SPI clock from the reference clock. */
  unsigned clockDiv;
  /** The command used to read the device ID. */
  unsigned char idCommand;
  /**
   * The number of dummy bytes returned by the device after a read ID command
   * before the ID.
   */
  unsigned char idDummyBytes;
  /** Size in bytes of the device ID. */
  unsigned char idBytes;
  /** Expected device ID. */
  unsigned idValue;
  /** The command use to erase all or part of a sector. */
  unsigned char sectorEraseCommand;
  /**
   * The number of bytes erased by the sector erase command. Set to 0 if the
   * sector erase command erases the entire sector.
   */
  unsigned sectorEraseSize;
   /** The command used to write enable the device. */
  unsigned char writeEnableCommand;
  /** The command used to write disable the device. */
  unsigned char writeDisableCommand;
  /** The type of protection used on the device. */
  fl_ProtectionType protectionType;
  struct {
    struct {
      /** The value to write to the status register to protect the device. */
      unsigned char setProtectedValue;
      /** The value to write to the status register to unprotect the device. */
      unsigned char setUnprotectedValue;
    } statusBits;
    struct {
      /** Command used to protect a sector. */
      unsigned char sectorProtectCommand;
      /** Command used to unprotect a sector. */
      unsigned char sectorUnprotectCommand;
    } commandValues;
  } protection;
  /** Command used to program a page. */
  unsigned int programPageCommand;
  /** Command used to read data. */
  unsigned char readCommand;
  /**
   * The number of dummy bytes returned by the device after a read
   * command before the first byte of data.
   */
  unsigned char readDummyBytes;
  /** The type of sector layout. */
  fl_SectorLayout sectorLayout;
  struct {
    /** The sector size in bytes when the sector layout is regular. */
    unsigned regularSectorSize;
    struct {
      /** The number of sectors when the sector layout is irregular. */
      unsigned char sectorCount;
      /**
       * Log base 2 of the number in each sector when the sector layout is
       * irregular.
       */
      unsigned char sectorSizesLog2[32];
    } irregularSectorSizes;
  } sectorSizes;
  /** Command used to read the status register. */
  unsigned char readSRCommand;
  /** Command used to write the status register. */
  unsigned int writeSRCommand;
  /** Bit mask for the write in progress bit. */
  unsigned char wipBitMask;
} fl_DeviceSpec;

/** Struct containing ports and clocks used to access a flash device. */
typedef struct {
#ifdef __XC__
  in buffered port:8 spiMISO;  /**< Master input, slave output (MISO) port. */
  out port spiSS;              /**< Slave select (SS) port. */
  out port spiCLK;             /**< Serial clock (SCLK) port. */
  out buffered port:8 spiMOSI; /**< Master output, slave input (MOSI) port. */
  clock spiClkblk;             /**< Clock block for use with SPI ports. */
#else
  unsigned spiMISO;
  unsigned spiSS;
  unsigned spiCLK;
  unsigned spiMOSI;
  unsigned spiClkblk;
#endif
} fl_SPIPorts;

/**
 * Connect to a SPI flash device.
 * \param SPI The SPI ports to use.
 * \return 0 on success, non zero on failure.
 */
#ifdef __XC__
int fl_connect(fl_SPIPorts& SPI);
#else
int fl_connect(fl_SPIPorts* SPI);
#endif


/**
 * Returns the capacity in bytes of the connected SPI device.
 * If not connected to a flash device the result is undefined.
 * \return The flash size.
 */
unsigned fl_getFlashSize();



/* Boot partition functions. */

/** Struct describing a bootable image. */
typedef struct {
  unsigned startAddress; /**< The address of the start of the image. */
  unsigned size; /**< The size in bytes of the image. */
  unsigned version; /**< The image version. */
  int factory; /**< 1 if the image is the factory image, 0 otherwise. */
} fl_BootImageInfo;


/**
 * Write to the nth page in the data partition. The sector containing the page
 * must have been erased previously.
 * \param n The page number to write.
 * \param src The data to write.
 * \return 0 on success, non zero on failure.
 */
int fl_writeDataPage(unsigned n, const unsigned char src[]);

/**
 * Read the nth page in the data partition.
 * \param n The page number to read.
 * \param dst The array to fill with data.
 * \return 0 on success, non zero on failure.
 */
int fl_readDataPage(unsigned n, unsigned char dst[]);

/* Sector level functions. */


/**
 * Erases all sectors in the the data partition.
 * \return 0 on success, non-zero on failure.
 */
int fl_eraseAllDataSectors(void);

/**
 * Enum of built-in flash device types. These values are used for the return
 * value of fl_getFlashType() when fl_connect() is used to connect to a device.
 */
#include "SpecEnum.h"

/**
 * The standard supported devices as user accessible macros.
 */
#include "SpecMacros.h"

#ifdef __cplusplus
} //extern "C"
#endif

#endif /* _diet_flash_h_ */
