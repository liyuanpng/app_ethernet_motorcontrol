/*
 * flash_over_ethernet.h
 *
 *  Created on: 27.10.2015
 *      Author: hstroetgen
 */

#ifndef FLASH_OVER_ETHERNET_H_
#define FLASH_OVER_ETHERNET_H_

#include <ethernet.h>
#include <flash.h>


void flash_filter(char data[], chanend c_flash_data, int nbytes, client interface if_tx tx);

void firmware_update_loop(fl_SPIPorts &SPI, chanend c_flash_data, chanend ?reset);

#endif /* FLASH_OVER_ETHERNET_H_ */
