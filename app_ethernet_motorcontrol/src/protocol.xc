/*
 * protocol.xc
 *
 * @brief Implements the communication protocoll.
 *
 *  Created on: Oct 1, 2015
 *      Author: hstroetgen
 */

#include <ethernet_hub_client.h>
#include <mac_filters.h>
#include <print.h>
#include <inttypes.h>
#include <stdio.h>
#include <string.h>
#include <ethernet_config.h>

#include "protocol.h"




/**
 *  @brief Filters the protocol packages.
 *  @param[in]      data     Buffer with the packet.
 *  @param[in]      nBytes   Byte count.
 *  @param[in,out]  led      Interface client for LED communication with led_server().
 *  @param[out]     addr     Interface client for address communication with send().
 */
void protocol_filter(char data[], int nBytes, client interface if_motor motor, client interface if_addr addr)
{
    int reply;

    if (isForMe(data, MAC_INPUT) && isSNCN(data))
    {
        // Send protocol data to led function.
        if (data[OFFSET_PAYLOAD] != 0x0)
        {
            // Send data to led server and receive answer.
            reply = led.msg(data[OFFSET_PAYLOAD], data[OFFSET_PAYLOAD+1]);
            // Send addresses to send function.
            addr.msg(data, reply);
        }
    }
}

/**
 *  @brief Receives the receive packet and changed it to the transfer packet.
 *  @param[in, out] data    Buffer with the receive packet.
 *  @param[in]      reply   Answer from led_server().
 */
void make_packet(char data[], char reply)
{
    char txbuffer[TX_SIZE];

    memset(txbuffer, 0, TX_SIZE);

    /* Change order of MAC-addresses for reply packet */
    memcpy((txbuffer + SRC_MAC_BYTE), (data + DST_MAC_BYTE), 6);
    memcpy((txbuffer + DST_MAC_BYTE), (data + SRC_MAC_BYTE), 6);

    // Copy ethernet type
    txbuffer[ETHERTYPE_BYTE]    = data[ETHERTYPE_BYTE];
    txbuffer[ETHERTYPE_BYTE +1] = data[ETHERTYPE_BYTE +1];

    txbuffer[OFFSET_PAYLOAD] = reply;

    memcpy(data, txbuffer, TX_SIZE);
}

/**
 *  @brief Send the response packages to the server.
 *  @param dataToP1     Channel for port 1.
 *  @param dataToP2     Channel for port 2.
 *  @param[in] addr     Interface with the mac-address from filter().
 */
void send(chanend dataToP1, chanend dataToP2, server interface if_addr addr)
{
    unsigned int txbuffer[TX_SIZE];

    while (1)
    {
        select
        {
            case addr.msg(char address[], int reply):
                memcpy(txbuffer, address, 14);

                make_packet((txbuffer, char[]), reply);
                break;
        }

        passFrameToHub(dataToP1, (txbuffer, char[]), TX_SIZE);
        passFrameToHub(dataToP2, (txbuffer, char[]), TX_SIZE);
    }
}

/**
 *  @brief Fetched all packages from the ports.
 *  @param dataFromP1   Channel for port 1.
 *  @param dataFromP2   Channel for port 2.
 *  @param[in,out]  led      Interface client for LED communication with led_server().
 *  @param[out]     addr     Interface client for address communication with send().
 */
void protocol(chanend dataFromP1, chanend dataFromP2, client interface if_motor motor, client interface if_addr addr)
{
    int nbytes;
    unsigned rxbuffer[400];

    while(1)
    {
       select
       {
           case fetchFrameFromHub(dataFromP1, rxbuffer, nbytes):
                           break;

           case fetchFrameFromHub(dataFromP2, rxbuffer, nbytes):
                           break;
       }

       protocol_filter((rxbuffer, char[]), nbytes, motor, addr);

    }
}

