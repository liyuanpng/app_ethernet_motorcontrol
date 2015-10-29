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

#include <xs1.h>
#include "flash_somanet.h"
#include "flash_write.h"

//#define DEBUG

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

//#define BUFFER_SIZE     400

void flash_read(char data[], chanend c_flash_data)
{
    static int size = 0;
    int page = 0;
    int cmd = 0;
    int status = 0;
    static int state = 0;
    int byte_count = 0;

    // State 0 is first packet.
    // Reads the protocol data
    if (state == 0)
    {
        cmd = data[OFFSET_PAYLOAD + OFFSET_CMD];
        c_flash_data <: cmd;

        size = (data[OFFSET_PAYLOAD + OFFSET_SIZE] << 24
              | data[OFFSET_PAYLOAD + OFFSET_SIZE+1] << 16
              | data[OFFSET_PAYLOAD + OFFSET_SIZE+2] << 8
              | data[OFFSET_PAYLOAD + OFFSET_SIZE+3] << 0);
        c_flash_data <: size;

        page = data[OFFSET_PAYLOAD + OFFSET_PAGE] << 8 | data[OFFSET_PAYLOAD + OFFSET_PAGE+1] << 0;
        c_flash_data <: page;

        c_flash_data :> status;

        state = 1;
    }
    // Reads the flash data
    if (state == 1)
    {
        if (size > 0 && status == 1)
        {
            byte_count = BUFFER_SIZE;
            // If size smaller BUFFER_SIZE then set byte_count to size.
            if (size < BUFFER_SIZE)
                byte_count = size;

            for (int i=OFFSET_DATA; i<byte_count; i++)
                c_flash_data :> data[i];

            size -= byte_count;
        }
        else
        {
            state = 0;
        }
    }
}

void flash_write(char data[], chanend c_flash_data, int nbytes)
{
    static int size = 0;
    int page = 0;
    int cmd = 0;
    int status = 0;
    static int state = 0;
    int byte_count = 0;

    // State 0 is first packet.
    // Reads the protocol data
    if (state == 0)
    {
        cmd = data[OFFSET_PAYLOAD + OFFSET_CMD];
        c_flash_data <: cmd;

        size = (data[OFFSET_PAYLOAD + OFFSET_SIZE] << 24
              | data[OFFSET_PAYLOAD + OFFSET_SIZE+1] << 16
              | data[OFFSET_PAYLOAD + OFFSET_SIZE+2] << 8
              | data[OFFSET_PAYLOAD + OFFSET_SIZE+3] << 0);
        c_flash_data <: size;

        page = data[OFFSET_PAYLOAD + OFFSET_PAGE] << 8 | data[OFFSET_PAYLOAD + OFFSET_PAGE+1] << 0;
        c_flash_data <: page;

        state = 1;
    }
    // Writes the flash data
    if (state == 1)
    {
        if (size > 0)
        {
            byte_count = BUFFER_SIZE;
            // If size smaller BUFFER_SIZE then set byte_count to size.
            if (size < BUFFER_SIZE)
                byte_count = size;

            for (int i=OFFSET_DATA; i<byte_count; i++)
                c_flash_data <: data[i];

            size -= byte_count;
        }
        else
        {
            c_flash_data :> status;
            state = 0;
        }
    }
}

void flash_filter(char data[], chanend foe_comm, chanend c_flash_data, int nbytes, client interface if_tx tx)
{
    //TODO Implementiere den ganzen Flash-Kram.
    if (isForMe(data, MAC_INPUT) && isSNCN(data))
    {
        // Send protocol data to motor function.
        if (data[OFFSET_PAYLOAD + OFFSET_FLAG] == 0xF1) // 0xA5 0x4
        {
            if (data[OFFSET_PAYLOAD + OFFSET_CMD] == 1)
            {
                flash_read(data, c_flash_data);
                tx.msg(data);
            }

            if (data[OFFSET_PAYLOAD + OFFSET_CMD] == 3)
            {
                flash_write(data, c_flash_data, nbytes);
                tx.msg(data);
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

            if (command == 1)
            { // node 1
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
            /*
            else if (command >= 2 && command < 18)
            { // nodes 2 to 18
                if (start_end_token == START_UPDATE)
                {
                    c_nodes[command-2] <: command;
                    c_nodes[command-2] <: START_UPDATE;
                }
                else if (start_end_token == END_UPDATE)
                {
                    c_nodes[command-2] <: 100;
                    c_nodes[command-2] <: 0;
                    flag_node = 0;
                    command = 0;
                }
            }*/
        }
        else if (size >= 100)
        {
            if (command == 1)
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
            }/*
            else if (command >= 2 && command < 18 )
            {
                for (int i=0; i<size; i++)
                {
                    buffer[i] = read_from_channel_as_uchar(foe_comm);
                }
                c_nodes[command-2] <: 10;
                c_nodes[command-2] :> status;
                if (status == READY_TO_FLASH)
                {
                    c_nodes[command-2] <: size;
                    for (int i=0; i<size; i++)
                    {
                        c_nodes[command-2] <: buffer[i];
                    }
                }
            }*/
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
    unsigned char data[256];
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
            if (command == 1)
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
            else if (command == 3)
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
            break;
        }
    }
}

