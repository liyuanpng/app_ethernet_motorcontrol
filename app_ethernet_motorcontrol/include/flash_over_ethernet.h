/*
 * flash_over_ethernet.h
 *
 *  Created on: 27.10.2015
 *      Author: hstroetgen
 */

#ifndef FLASH_OVER_ETHERNET_H_
#define FLASH_OVER_ETHERNET_H_

#include <protocol.h>
#include <flash.h>

/**
 * FOE_FILE_OPEN
 * open specified file for reading, replies FOE_FILE_OK on success or FOE_FILE_ERROR on error.
 * After FOE_FILE_OPEN the filename must be transfered over the channel.
 */
#define FOE_FILE_OPEN      10

/**
 * FOE_FILE_CLOSE
 * Finish file access operation
 */
#define FOE_FILE_CLOSE     13

/**
 * FOE_FILE_READ
 * After the command the maximum size of the local buffer should be sent.
 * Then up to the maximum number of bytes are transfered.
 */
#define FOE_FILE_READ      11

/**
 * FOE_WRITE size data
 *** currently unsupported ***
 */
#define FOE_FILE_WRITE     12

/**
 * FOE_FILE_SEEK
 * Followed by 'pos' to
 * set filepointer to (absolute) position 'pos', the next read/write operation will start from there.
 * With FOE_FILE_SEEK 0 the file pointer is rewind to the beginning of the file.
 */
#define FOE_FILE_SEEK      14

/**
 * FOE_FILE_FREE
 * This command will erase the file (or files), so further file access is possible.
 */
#define FOE_FILE_FREE      15

/* replies to the caller */

/**
 * Reply to FOE_FILE_OPEN if file is found and accessible.
 */
#define FOE_FILE_ACK       20

/**
 * Reply if error occures.
 */
#define FOE_FILE_ERROR     21

/**
 * Indicator for data, followed by data count and the individual bytes.
 */
#define FOE_FILE_DATA      22

/**
 * Control command if file is transfered and processable.
 */
#define FOE_FILE_READY     30

void flash_filter(char data[], chanend foe_comm, chanend c_flash_data, int nbytes, client interface if_tx tx);

void firmware_update_loop(fl_SPIPorts &SPI, chanend foe_comm, chanend c_flash_data, chanend ?reset);

#endif /* FLASH_OVER_ETHERNET_H_ */
