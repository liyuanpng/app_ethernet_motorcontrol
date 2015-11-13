/*
 * flash_over_ethernet.xc
 *
 *  Created on: 27.10.2015
 *      Author: hstroetgen
 */

#include <mac_filters.h>
#include <flash_over_ethernet.h>
#include <ethernet_config.h>
#include <print.h>
#include <flashlib.h>
#include "flash.h"
#include <string.h>

#include <xs1.h>
#include "flash_somanet.h"
#include "flash_write.h"

#define FIRMWARE_VERSION    "v1.0"

#define DEBUG

#define START_FLASH     12
#define END_FLASH       26
#define FLASH           1
#define IDLE            0
#define READY_TO_FLASH  20
#define START_UPDATE    0x34
#define END_UPDATE      0x99

#define OFFSET_FLAG     0
#define OFFSET_CMD      1
#define OFFSET_SIZE     2
#define OFFSET_PAGE     6
#define OFFSET_DATA     8

#define CMD_READ        1
#define CMD_WRITE       3
#define CMD_GETVERSION  4
#define CMD_FLASH_FW    5

#define PAGE_SIZE   256

unsigned image_size = 0;

//#define BUFFER_SIZE     400

int read_data_from_flash(chanend c_flash_data, unsigned page, unsigned char data[PAGE_SIZE], unsigned data_length)
{
    int status;

    c_flash_data <: CMD_READ;
    c_flash_data <: data_length;
    c_flash_data <: page;
    c_flash_data :> status;
    if(status == 1) {
        for (int i=0; i<data_length; i++) {
            c_flash_data :> data[i];
        }
    }

    return status;
}

int write_data_to_flash(chanend c_flash_data, unsigned page, unsigned char data[PAGE_SIZE], unsigned data_length)
{
    int status;
    c_flash_data <: CMD_WRITE;
    c_flash_data <: data_length;
    c_flash_data <: page;

    for (int i=0; i<data_length; i++) {
        c_flash_data <: data[i];
    }
    c_flash_data :> status;
    return status;
}

void flash_read(char data[], chanend c_flash_data)
{
    static int size = 0;
    static int size_rest = 0;
    int page = 0;
    int status = 0;
    int byte_count = 0;


    // Get page number
    page = data[OFFSET_PAYLOAD + OFFSET_PAGE] << 8 | data[OFFSET_PAYLOAD + OFFSET_PAGE+1] << 0;

    // Get size (amount of bytes). Only when
    if (size_rest == 0)
    {
        size = (data[OFFSET_PAYLOAD + OFFSET_SIZE] << 24
              | data[OFFSET_PAYLOAD + OFFSET_SIZE+1] << 16
              | data[OFFSET_PAYLOAD + OFFSET_SIZE+2] << 8
              | data[OFFSET_PAYLOAD + OFFSET_SIZE+3] << 0);
        size_rest = size;
    }

    byte_count = PAGE_SIZE;
    // If size_rest smaller page size, take the rest.
    if (size_rest < byte_count)
    {
        byte_count = size_rest;
    }

    status = read_data_from_flash(c_flash_data, page+1, data+OFFSET_PAYLOAD+OFFSET_DATA, byte_count);
/*
    for (int i = 0; i < 278; i++)
        printhex(data[i]);
    printhexln(0);
*/
    size_rest -= byte_count;

    if (size_rest == 0)
        printstrln("Lesen Faeddich!");
}

int flash_write(char data[], chanend c_flash_data, int nbytes)
{
    static int size = 0;
    static int size_rest = 0;
    int page = 0;
    int status = 0;
    int byte_count = 0;

    // Get page number
    page = data[OFFSET_PAYLOAD + OFFSET_PAGE] << 8 | data[OFFSET_PAYLOAD + OFFSET_PAGE+1] << 0;

    // Get size (amount of bytes). Size is in every packet.
    if (size_rest == 0)
    {
        size = (data[OFFSET_PAYLOAD + OFFSET_SIZE] << 24
              | data[OFFSET_PAYLOAD + OFFSET_SIZE+1] << 16
              | data[OFFSET_PAYLOAD + OFFSET_SIZE+2] << 8
              | data[OFFSET_PAYLOAD + OFFSET_SIZE+3] << 0);
        printintln(size);
        // Save size of image in the first page. The image itself will be safed in n+1 pages.
        status = write_data_to_flash(c_flash_data, page, data + OFFSET_PAYLOAD + OFFSET_SIZE, 4);

        printintln(status);
        size_rest = size;
    }

    // Page size
    byte_count = PAGE_SIZE;
    // If size_rest smaller page size, take the rest.
    if (size_rest < byte_count)
    {
        byte_count = size_rest;
    }

    // Send Bytes.
    status = write_data_to_flash(c_flash_data, page+1, data+OFFSET_PAYLOAD+OFFSET_DATA, byte_count);

    size_rest -= byte_count;

    if (size_rest == 0)
        printstrln("Schreiben Faeddich!");

    return status;
}


// Factory image programming
#pragma stackfunction 2048
int flash_addFactoryImage(unsigned address, unsigned imageSize)
{
    if (imageSize == 0)
        return 0;

    unsigned pageSize = fl_getPageSize();

    /* Write data. */
    unsigned char buf[PAGE_SIZE];
    unsigned char checkBuf[PAGE_SIZE];

    printstr("Add Image...");

    for (int page=1; page < imageSize/PAGE_SIZE+1; page++)
    {
        /* Get a page of data. */
        if (fl_readDataPage(page, buf) != 0)
           return 1;

        /* Write the page. */
        //printstr("Writing page at "); printhexln(address);

        if (fl_writePage(address, buf) != 0)
            return 1;

        if (fl_readPage(address, checkBuf) == 0)
        {
            for(int i=0; i < PAGE_SIZE; i++)
            {
                if(checkBuf[i] != buf[i])
                {
                    printhex(i);printchar(' ');
                    printhex(buf[i]);printchar(' ');
                    printhexln(checkBuf[i]);
                }
            }
        }

        imageSize -= pageSize;
        address += pageSize;
    }

    printstrln("finished");
    fl_endWriteImage();
    return 0;
}

static int getSectorAtOrAfter(unsigned address)
{
  unsigned numSectors = fl_getNumSectors();
  unsigned sector;
  for (sector = 0; sector < numSectors; sector++) {
    if (fl_getSectorAddress(sector) >= address)
      return sector;
  }
  return -1;
}

#define IMAGETAG (0x1a551e5)
#define IMAGETAG_13 (0x0FF51DE)

int flash_firmware(fl_SPIPorts &SPI, unsigned size)
{
    fl_BootImageInfo b;
    unsigned char buf[20];

    //flash_setup(1, SPI);
    fl_connect(SPI);
    fl_setProtection(0);

    if( 0 != fl_getFactoryImage(b) )
    {
        printstr("Error: Cannot locate factory boot image.\n");
        fl_disconnect();
    }

    printstr("Factory Image Size: ");
    printuint(b.size);
    printstr(", Factory Image Addr: ");
    printuint(b.startAddress);
    printstr(", Factory Image Version: ");
    printuintln(b.version);

    if (fl_readPage(b.startAddress, buf) == 0)
    {
        for (int i = 0; i < 20; i++)
            printhex(buf[i]);
        printhexln(0);
    }

    unsigned upgradeAddress = b.startAddress + b.size;
    unsigned sectorNum = getSectorAtOrAfter(upgradeAddress);
    unsigned sectorAddress = fl_getSectorAddress(sectorNum);

    if (flash_addFactoryImage(sectorAddress, size) != 0)
    {
        printstr("Error: failed to locate factory boot image.\n");
        fl_disconnect();
    }

    fl_getNextBootImage(b);

    printstr("Next Image Size: ");
    printuint(b.size);
    printstr(", Next Image Addr: ");
    printuint(b.startAddress);
    printstr(", Next Image Version: ");
    printuintln(b.version);
    /*
    unsigned int imageAddr = 0;

    unsigned char checkBuf[PAGE_SIZE];
    unsigned char fileBuf[PAGE_SIZE];
    unsigned int checkPos = 0;
    int gotError = 0;

    while(checkPos < size)
    {
      int thisSize = ((size-checkPos)>PAGE_SIZE) ? PAGE_SIZE : (size-checkPos);
      fl_readPage(checkPos+imageAddr, checkBuf);
      fl_readDataPage(checkPos/PAGE_SIZE+1, fileBuf);
      int i;

      for(i=0; i < thisSize; i++)
      {
        if(checkBuf[i] != fileBuf[i])
        {
          //printstr("Error: verification mismatch at offset ");
          printhex(checkPos+i);printchar(' ');
          printhex(fileBuf[i]);printchar(' ');
          printhexln(checkBuf[i]);
          //gotError = 1;
        }
      }
      checkPos += PAGE_SIZE;
      if(gotError)
      {
        printstrln("Error");
        //return 1;
      }
    }
*/


    fl_setProtection(1);
    fl_disconnect();

    return 0;
}


void read_firmware(fl_SPIPorts &SPI, unsigned size)
{
    unsigned int imageAddr = 0;
    unsigned char checkBuf[PAGE_SIZE];
    unsigned char fileBuf[PAGE_SIZE];
    unsigned int checkPos = 0;
    int gotError = 0;

    fl_connect(SPI);
    fl_setProtection(0);

    while(checkPos < size)
    {
      int thisSize = ((size-checkPos)>PAGE_SIZE) ? PAGE_SIZE : (size-checkPos);
      fl_readPage(checkPos+imageAddr, checkBuf);
      //fl_readDataPage(checkPos/PAGE_SIZE+1, fileBuf);
      int i;
      for(i=0; i < thisSize; i++)
      {
          //printstr("Error: verification mismatch at offset ");
          printhex(checkPos+i);printchar(' ');
          //printhex(fileBuf[i]);printchar(' ');
          printhexln(checkBuf[i]);
      }
      checkPos += PAGE_SIZE;
    }
}

void flash_filter(char data[], chanend foe_comm, chanend c_flash_data, int nbytes, client interface if_tx tx)
{
    int reply;
    char version[] = FIRMWARE_VERSION;

    if (isForMe(data, MAC_INPUT) && isSNCN(data))
    {
        // Send protocol data to motor function.
        if (data[OFFSET_PAYLOAD + OFFSET_FLAG] == 0xF1) // 0xA5 0x4
        {
            switch (data[OFFSET_PAYLOAD + OFFSET_CMD])
            {
                case CMD_READ:
                    flash_read(data, c_flash_data);
                    tx.msg(data, 300);
                    break;
                case CMD_WRITE:
                    reply = flash_write(data, c_flash_data, nbytes);
                    memcpy((data + OFFSET_PAYLOAD), (char *) &reply, 4);
                    tx.msg(data, 20);
                    break;
                case CMD_GETVERSION:
                    memcpy((data + OFFSET_PAYLOAD), version, 5);
                    printstrln("Send version");
                    tx.msg(data, 20);
                    break;
                case CMD_FLASH_FW:
                    c_flash_data <: CMD_FLASH_FW;
                    break;
                default:
                    break;
            }
        }
    }
}


static inline unsigned char read_from_channel_as_uchar(chanend c)
{
    /* FIXME: how to do this without a tmp variable? */
    int tmp;
    c :> tmp;
    return (unsigned char) tmp;
}



/*
 * If a file is available it is read by check_file_access() and the filesystem
 * becomes formated for the next file.
 *
 * Note: this implementation allows firmware update for only upto 18 nodes connected over DX COM.
 */
static unsigned check_file_access(fl_SPIPorts &SPI, chanend foe_comm, unsigned address, chanend ?reset_out)
{
    static int write_state = IDLE;

    unsigned char buffer[BUFFER_SIZE];
    unsigned size;
    int command;
    int start_end_token;
    int flag_node = 0;
    int status;
    int ctmp;

    foe_comm <: FOE_FILE_READ;
    foe_comm <: BUFFER_SIZE;
    foe_comm :> ctmp;

    switch (ctmp)
    {
    case FOE_FILE_DATA:
        foe_comm :> size;

        if (size == 2)
        {        /* FoE message header */
            foe_comm :> start_end_token;
            foe_comm :> command;

            if (start_end_token == START_UPDATE)
            {
                write_state = START_FLASH;
            }
            else if (start_end_token == END_UPDATE)
            {
                write_state = IDLE;
                fl_endWriteImage();

                if (!isnull(reset_out))
                {
                    reset_out <: 1;
                }
            }
        }
        else if (size >= 100)
        {
            if (write_state == START_FLASH)
            {
                flash_setup(1, SPI);
                address = 0;
                write_state = FLASH;
            }

            for (int i=0; i<size; i++)
            {
                buffer[i] = read_from_channel_as_uchar(foe_comm);
            }

            flash_buffer(buffer, size, address);
            address += size;
        } else {
            for (int i=0; i<size; i++)
            {
                foe_comm :> int _; // discard data
            }
        }
        break;

    case FOE_FILE_ERROR:
        #ifdef DEBUG
        printstr("\nfoe error\n");
        #endif
        break;

    default:
        break;
    }

    /* clean up file system to permit next foe transfer */

    foe_comm <: FOE_FILE_FREE;
    foe_comm :> ctmp;

    switch (ctmp) {
    case FOE_FILE_ACK:
        #ifdef DEBUG
        printstr("[check_file_access()] filesystem is clear again\n");
        #endif
        break;
    case FOE_FILE_ERROR:
        #ifdef DEBUG
        printstr("[check_file_access()] error during filesystem clean up\n"); //FIXME needs handling
        #endif
        break;
    default:
        #ifdef DEBUG
        printstr("[check_file_access()] unknown return value\n");
        #endif
        break;
    }
    return address;
}


void firmware_update_loop(fl_SPIPorts &SPI, chanend foe_comm, chanend c_flash_data, chanend ?reset)
{
    timer t;
    unsigned ts;
    const unsigned delay = 100000;
    char name[] = "test";
    int notification;
    int command;
    unsigned address = 0;
    int data_length; /* data length exceeds page length error */
    int page;        /* page exceeds error, no data partition found error */
    unsigned char data[PAGE_SIZE];
    int status;      /* erase all pages atleast once if status is always 0 even if data partition is found */

    /* Select ensures all COM handler are ready */
    while (1)
    {
        select
        {
        case foe_comm :> notification:
            /* Firmware update over EtherCAT (signaled over foe_signal) */
            if (notification != FOE_FILE_READY)
            {
                t :> ts;
                t when timerafter(ts+delay) :> void;
                continue;
            }

            /* check if a file is present, FIXME: this could be realized by the signaling channel! */
            foe_comm <: FOE_FILE_OPEN;

            for (int i=0; name[i] != '\0'; i++)
            {
                foe_comm <: (int) name[i];
            }

            foe_comm <: (int) '\0';

            int ctmp;
            foe_comm :> ctmp;

            switch (ctmp)
            {
                case FOE_FILE_ERROR:
                    #ifdef DEBUG
                    printstr("Error file is not ready\n");
                    #endif
                    break;

                case FOE_FILE_ACK:
                    /* If file is ready read it and flash to device */
                    address = check_file_access(SPI, foe_comm, address, reset);
                    #ifdef DEBUG
                    printintln(address);
                    #endif
                    break;

                default:
                    #ifdef DEBUG
                    printstr("Unknown state returned\n");
                    #endif
                    break;
            }
            // delay = 100;
            // t :> ts;
            //t when timerafter(ts+delay) :> void;
            break;

            //TODO Firmware update over any other Comm interfaces

            /* Data Field update */
        case c_flash_data :> command: // read/write
            if (command == CMD_READ)
            {       // read
                c_flash_data :> data_length;
                c_flash_data :> page;
                status = __read_data_flash(SPI, page, data);

                c_flash_data <: status;

                //send stream of data upto specified data_length (if status is OK)
                if (status == 1)
                {
                    for (int i=0; i<data_length; i++)
                    {
                        c_flash_data <: data[i];
                    }
                }
            }
            else if (command == CMD_WRITE)
            { // write
                c_flash_data :> data_length;
                c_flash_data :> page;
                // read stream of data page

                for (int i=0; i<data_length; i++)
                {
                    c_flash_data :> data[i];
                }

                status = __write_data_flash(SPI, data, data_length, page);

                c_flash_data <: status;
            }
            else if (command == CMD_FLASH_FW)
            {
                __read_data_flash(SPI, 0, data);
                unsigned size = (data[0] << 24 | data[1] << 16 | data[2] << 8 | data[3]);
                printstr("Size: ");
                printintln(size);

                if (flash_firmware(SPI, size))
                {
                    printstrln("Error: Flash Firmware!");
                }
                //read_firmware(SPI, size);
            }
            break;
        }
    }
}

