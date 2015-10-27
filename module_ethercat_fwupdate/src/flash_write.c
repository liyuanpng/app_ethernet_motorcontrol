/**
 * @file flash_write.c
 * @brief Flash device access
 * @author Synapticon GmbH <support@synapticon.com>
 */

#include <stdlib.h>
#include <stdint.h>
#include <flashlib.h>
#include <platform.h>
#include <flash.h>
#include <flash_somanet.h>
#include <string.h>
#include <print.h>

const int page_size = 256;

void flash_setup(int factory, fl_SPIPorts *SPI)  // could have arguments to specify the upgarde image
{
    if (fl_connect(SPI) == 0) {
        // successfully connected to flash

        // Disable flash protection for writing image
        fl_setProtection(0);
        fl_eraseAll();
    } else {
        printstrln("could not connect flash");
        exit(1);
    }
}

void connect_to_flash(fl_SPIPorts *SPI)
{
    if (fl_connect(SPI) != 0) {
        printstrln("could not connect flash");
        exit(1);
    }
}

void flash_buffer(unsigned char content[BUFFER_SIZE], int image_size, unsigned address)
{
    unsigned current_page = 0;

    for (int i=0; i<(image_size/page_size); i++) {
        fl_writePage(address, &content[current_page]);
        current_page += page_size;
        address += page_size;
    }
}


int __write_data_flash(fl_SPIPorts *SPI, unsigned char data[256], int data_length, int page)
{
    /* Array to store the data to be written to the flash */
    unsigned char data_page[256];

    int status = 1;             /* SUCCESS == 1 */

    /* Initialise the my_page array */
    for (int i=0; i<page_size; i++ ) {
        if (i < data_length) {
            data_page[i] = data[i];
        } else {
            data_page[i] = 0x0;
        }
    }

    connect_to_flash(SPI);

    // Get the FLASH data partition size
    int temp = fl_getDataPartitionSize();

    printstr("FLASH data partition size: ");
    printint(temp);
    printstrln(" bytes.");

    if (page == 0) {
        if (fl_eraseAllDataSectors() != 0) {
            printstrln("Could not erase the data partition");
            status = 0;
        }
    }
    // Write to the data partition
    if (fl_writeDataPage(page, data_page) != 0) {
        printstrln("Could not write the data partition");
        status = 0;
    }

    // Read from the data partition and Verify
    if (fl_readDataPage(page, data_page) != 0) {
        printstrln("Could not read the data partition");
        status = 0;
    }

    for (int i=0; i<page_size; i++) {
        if (i < data_length) {
            if (data_page[i] != data[i]) {
                status = 0;
                break;
            }
        }
        // printhexln(data_page[i]);
    }
    return status;
}

int __read_data_flash(fl_SPIPorts *SPI, int page, unsigned char data[256])
{
    /* Variables for buffering, counting iterations, etc */
    unsigned int temp;
    int status = 1;

    /* Initialise the data_page array */
    memset(data, 0, page_size);

    connect_to_flash(SPI);

    // Get the FLASH data partition size
    temp = fl_getDataPartitionSize();
    printstr("FLASH data partition size: ");
    printint(temp);
    printstrln(" bytes.");

    // Read from the data partition and Verify
    if (fl_readDataPage(page, data) != 0) {
        printstrln("Could not read the data partition");
        status = 0;
    }

    return status;
}
