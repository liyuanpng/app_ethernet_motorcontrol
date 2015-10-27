/**
 * @file flash_write.c
 * @brief Flash device access
 * @author Synapticon GmbH <support@synapticon.com>
 */

#pragma once

#include <xccompat.h>

void flash_buffer(unsigned char content[], int imageSize, unsigned address);
void flash_setup(int factory, REFERENCE_PARAM(fl_SPIPorts, SPI));
void connect_to_flash(REFERENCE_PARAM(fl_SPIPorts, SPI));
int __write_data_flash(REFERENCE_PARAM(fl_SPIPorts, SPI), unsigned char data[256], 
                       int data_length, int page);
int __read_data_flash(REFERENCE_PARAM(fl_SPIPorts, SPI), int page, unsigned char data[256]);


