/**
 * @file flash_data.xc
 * @brief Somanet Flash Data Partition Access
 * @brief Read and Store Configuration Data
 * @author Synapticon GmbH <support@synapticon.com>
 */

#if 1

//#define PRINTS // NO space for prints!

#include <string.h>
#include <print.h>

int read_data_flash(chanend c_flash_data, unsigned page, unsigned char data[256], unsigned data_length)
{
    int status;

    c_flash_data <: 1;
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

int write_data_to_flash(chanend c_flash_data, unsigned page, unsigned char data[256], unsigned data_length)
{
    int status;
    c_flash_data <: 3;
    c_flash_data <: data_length;
    c_flash_data <: page;

    for (int i=0; i<data_length; i++) {
        c_flash_data <: data[i];
    }
    c_flash_data :> status;
    return status;
}


void store_data_array(int offset, int param, char data_array[])
{
    for (int i=0; i<4; i++) {
        data_array[offset+i] = (param >> (i*8)) & 0xff;
    }
}

int read_data_array(int offset, char data_array[])
{
    return ((data_array[3+offset] << 24) | ~(0xff<<24))
        & ((data_array[2+offset] << 16) | ~(0xff<<16))
        & ((data_array[1+offset] << 8) | ~(0xff<<8))
        & (  data_array[offset] | (0xffffffff<<8));
}

/*
 * example for storing/retrieving motor parameters to/from the data array
 */
void config_to_array()
{
    const int param = 0xf1f2f3f4;
    const int no_of_data = 4;

    unsigned char data_array[256] = {0};
    int param_read;

    // store data and update flag bit at 5th byte
    for (int i=0, k=0; i<(5*no_of_data); i+=5, k++) {
        store_data_array(i, param, data_array);
        data_array[4 + 5*(k/8)] = data_array[4 + 5*(k/8)] | 1<<(k%8);
    }

    // read data
    for (int i=0, k=0; i<(5*no_of_data); i+=5, k++) {
        param_read = read_data_array(i, data_array);
        if( (data_array[4 + 5*(k/8)] & 1<<(k%8)) >> (k%8) ) // updated
        {
            #ifdef PRINTS
            printhexln(param_read);
            #endif
        }
    }
}

/*
 * example shows how to store/retreive data array to/from flash memory
 */
void store_and_read_data(chanend c_flash_data)
{
    const int data_length = 256;
    const int page = 0;
    unsigned char data[256];
    int status;

    memset(data, 0x19, data_length); /* fill array with test pattern */

    // Store data on to flash
    status = write_data_to_flash(c_flash_data, page, data, data_length);
    #ifdef PRINTS
    printintln(status);
    #endif

    memset(data, 0, data_length); /* clear array */

    // Retrieve data from flash
    status = read_data_flash(c_flash_data, page, data, data_length);
    #ifdef PRINTS
    for (int i=0; i<data_length; i++) {
        printhexln(data[i]);
    }
    #endif
}

#endif
