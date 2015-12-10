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
#include <flash.h>
#include <string.h>
#include <xs1.h>
#include <stdint.h>
#include <xclib.h>


#include "flash_somanet.h"
#include "flash_write.h"
#include "crc.h"


#define FIRMWARE_VERSION    "v0.1"

//#define DEBUG

#define START_FLASH     12
#define END_FLASH       26
#define FLASH           1
#define IDLE            0
#define READY_TO_FLASH  20
#define START_UPDATE    0x34
#define END_UPDATE      0x99

#define PAGE_SIZE       256

#define OFFSET_FLAG     0 + OFFSET_PAYLOAD
#define OFFSET_CMD      1 + OFFSET_PAYLOAD
#define OFFSET_SIZE     2 + OFFSET_PAYLOAD
#define OFFSET_PAGE     6 + OFFSET_PAYLOAD
#define OFFSET_DATA     8 + OFFSET_PAYLOAD
#define OFFSET_CRC      OFFSET_DATA + PAGE_SIZE
#define OFFSET_END_W_CRC  OFFSET_CRC + 2

#define CMD_READ        1
#define CMD_WRITE       3
#define CMD_GETVERSION  4
#define CMD_FLASH_FW    5

#define ACK 0xff
#define NACK !ACK
#define ERR_CRC 0xfc



unsigned image_size = 0;


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
    page = data[OFFSET_PAGE] << 8 | data[OFFSET_PAGE+1] << 0;

    // Get size (amount of bytes). Only when
    if (size_rest == 0)
    {
        size = (data[OFFSET_SIZE] << 24
              | data[OFFSET_SIZE+1] << 16
              | data[OFFSET_SIZE+2] << 8
              | data[OFFSET_SIZE+3] << 0);
        size_rest = size;
    }

    byte_count = PAGE_SIZE;
    // If size_rest smaller page size, take the rest.
    if (size_rest < byte_count)
    {
        byte_count = size_rest;
    }

    status = read_data_from_flash(c_flash_data, page+1, data+OFFSET_DATA, byte_count);

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
    uint16_t packetCRC = 0, calculatedCRC = 0;

    // Get page number
    page = data[OFFSET_PAGE] << 8 | data[OFFSET_PAGE+1];

    // Get size (amount of bytes). Size is in every packet.
    if (size_rest == 0)
    {
        size = (data[OFFSET_SIZE] << 24
              | data[OFFSET_SIZE+1] << 16
              | data[OFFSET_SIZE+2] << 8
              | data[OFFSET_SIZE+3] << 0);

        // Save size of image in the first page. The image itself will be safed in n+1 pages.
        status = write_data_to_flash(c_flash_data, page, data + OFFSET_SIZE, 4);

        size_rest = size;
    }

    // Page size
    byte_count = PAGE_SIZE;
    // If size_rest smaller page size, take the rest.
    if (size_rest < byte_count)
    {
        byte_count = size_rest;
    }

    // CRC must be Zero, if everything is OK.
    calculatedCRC = crc16(data+OFFSET_DATA, data+OFFSET_END_W_CRC, 0);

    if (calculatedCRC)
    {
        packetCRC = data[OFFSET_CRC] << 8 | data[OFFSET_CRC + 1];
        printstr("Wrong CRC: ");
        printint(packetCRC);
        printstr(" ");
        printint(calculatedCRC);
        return ERR_CRC;
    }

    // Send Bytes.
    status = write_data_to_flash(c_flash_data, page+1, data+OFFSET_DATA, byte_count);

    size_rest -= byte_count;

    if (size_rest == 0)
        printstrln("Schreiben Faeddich!");

    return status?ACK:NACK;
}


// Factory image programming
#pragma stackfunction 2048
int flash_addUpgradeImage(unsigned address, unsigned imageSize)
{
    if (imageSize == 0)
        return 5;

    /* Write data. */
    unsigned char buf[PAGE_SIZE];
    unsigned char checkBuf[PAGE_SIZE];
    unsigned max_size = imageSize/PAGE_SIZE+1;

    printstr("Add Image at ");
    printintln(address);

    for (int page=1; page < max_size; page++)
    {
        /* Get a page of data. */
        if (fl_readDataPage(page, buf) != 0)
            return 1;

        if (fl_writeImagePage(buf) != 0)
            return 2;

        if (fl_readPage(address, checkBuf) == 0)
        {
            for(int i=0; i < PAGE_SIZE; i++)
            {
                if(checkBuf[i] != buf[i])
                {
                    printhex(i);printchar(' ');
                    printhex(buf[i]);printchar(' ');
                    printhexln(checkBuf[i]);
                    return 3;
                }
            }
        }
        else
        {
            return 4;
        }

        address += PAGE_SIZE;
    }

    printstrln("done");
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

int flash_firmware(fl_SPIPorts &SPI, unsigned size)
{
    fl_BootImageInfo b;

    if (fl_connect(SPI) != 0)
    {
        printstr("Error: Cannot find device.\n");
        return 6;
    }
    if (fl_setProtection(0) != 0)
    {
        printstr("Error: Cannot disable protection.\n");
        return 5;
    }

    if( 0 != fl_getFactoryImage(b) )
    {
        printstr("Error: Cannot locate factory boot image.\n");
        fl_disconnect();
        return 1;
    }

    printstr("Factory Image Size: ");
    printuint(b.size);
    printstr(", Factory Image Addr: ");
    printuint(b.startAddress);
    printstr(", Factory Image Version: ");
    printuint(b.version);
    printstr(", Factory?: ");
    printuintln(b.factory);

    unsigned upgradeAddress = b.startAddress + b.size;
    unsigned sectorNum = getSectorAtOrAfter(upgradeAddress);
    unsigned sectorAddress = fl_getSectorAddress(sectorNum);

    int val = 1;

    while (1)
    {
        val = fl_startImageAdd(b, size, 0);
        if (val == 0)
            break;
        else if (val == 1)
            printstr(".");
        else
            __builtin_unreachable();
    }

    if (val != 0)
    {
        printstr("Error: failed to start Image add.\n");
        fl_disconnect();
        return 2;
    }

    delay_seconds(1);
    int error_upgrade = flash_addUpgradeImage(sectorAddress, size);

    if (error_upgrade != 0)
    {
        printstr("Error: failed to add upgrade image.\n");
        fl_disconnect();
        return 10 + error_upgrade;
    }

    delay_seconds(1);

    if (fl_getNextBootImage(b) != 0)
    {
        printstr("Error: failed to locate next boot image.\n");
        fl_disconnect();
        return 4;
    }

    printstr("Next Image Size: ");
    printuint(b.size);
    printstr(", Next Image Addr: ");
    printuint(b.startAddress);
    printstr(", Next Image Version: ");
    printuint(b.version);
    printstr(", Factory?: ");
    printuintln(b.factory);

    fl_setProtection(1);
    fl_disconnect();

    return 0;
}


void flash_filter(char data[], chanend foe_comm, chanend foe_signal, chanend c_flash_data, int nbytes, client interface if_tx tx)
{
    int reply;
    char version[] = FIRMWARE_VERSION;

    if (isForMe(data, MAC_INPUT) && isSNCN(data))
    {
        // Send protocol data to motor function.
        if (data[OFFSET_FLAG] == 0xF1) // 0xA5 0x4
        {
            switch (data[OFFSET_CMD])
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
                    //printstrln("Send version");
                    tx.msg(data, 20);
                    break;
                case CMD_FLASH_FW:
                    c_flash_data <: CMD_FLASH_FW;
                    c_flash_data :> reply;
                    memcpy((data + OFFSET_PAYLOAD), (char *) &reply, 1);
                    tx.msg(data, 20);
                    //reset_cores1();
                    break;
                default:
                    break;
            }
        }
    }
}

void firmware_update_loop(fl_SPIPorts &SPI, chanend foe_comm, chanend c_flash_data, chanend ?reset)
{
    int command;
    int data_length; /* data length exceeds page length error */
    int page;        /* page exceeds error, no data partition found error */
    unsigned char data[PAGE_SIZE];
    int status;      /* erase all pages atleast once if status is always 0 even if data partition is found */

    /* Select ensures all COM handler are ready */
    while (1)
    {
        select
        {
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
                // Read image size from the first data page
                __read_data_flash(SPI, 0, data);
                unsigned size = (data[0] << 24 | data[1] << 16 | data[2] << 8 | data[3]);

                int error = flash_firmware(SPI, size);

                c_flash_data <: error;
            }
            break;
        }
    }
}

