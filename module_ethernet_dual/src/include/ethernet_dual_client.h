#pragma once

#include "platform.h"
#include "ethernet_conf_derived.h"
#include "mii.h"
#include "smi.h"

#include "ethernet_rx_client_lite_p1.h"
#include "ethernet_rx_client_lite_p2.h"

#include "ethernet_tx_client_lite_p1.h"
#include "ethernet_tx_client_lite_p2.h"

#define STATUS_PACKET_LEN -1

/** This function receives a complete frame (i.e. src/dest MAC address,
 *  type & payload),  excluding pre-amble, SoF & CRC32 from the ethernet
 *  server on port 1.
 *
 *  This function is selectable i.e. it can be used as a case in a select e.g.
 *
 *  \verbatim
 *      select {
 *         ...
 *         case mac_rx_p1(...):
 *            break;
 *          ...
 *        }
 *  \endverbatim
 *
 *  \param c_mac      A chanend connected to the ethernet server
 *  \param buffer     The buffer to fill with the incoming packet
 *  \param len        A reference parameter to be filled with the length of
 *                   the received packet in bytes. If the ethernet server is not ready,
 *                   this value will be -1.
 *  \param src_port   A reference parameter to be filled with the ethernet
 *                   port the packet came from.
 **/

#pragma select handler
void mac_rx_p1(chanend c_mac,
            unsigned char buffer[],
            REFERENCE_PARAM(unsigned int, len),
            REFERENCE_PARAM(unsigned int, src_port));


/** Sends an ethernet frame to the Ethernet server on port 1.
 *  Frame includes dest/src MAC address(s), type and payload.
 *
 *
 *  \param c_mac     channel end to tx server.
 *  \param buffer[]  byte array containing the ethernet frame. This must
 *                   be word aligned
 *  \param nbytes    number of bytes in buffer
 *  \param ifnum     the number of the eth interface to transmit to
 *                   (use ETH_BROADCAST transmits to all ports)
 *
 */
void mac_tx_p1(chanend c_mac, unsigned int buffer[], int nbytes, int ifnum);


/** This function receives a complete frame (i.e. src/dest MAC address,
 *  type & payload),  excluding pre-amble, SoF & CRC32 from the ethernet
 *  server on port 2.
 *
 *  This function is selectable i.e. it can be used as a case in a select e.g.
 *
 *  \verbatim
 *      select {
 *         ...
 *         case mac_rx_p2(...):
 *            break;
 *          ...
 *        }
 *  \endverbatim
 *
 *  \param c_mac      A chanend connected to the ethernet server
 *  \param buffer     The buffer to fill with the incoming packet
 *  \param len        A reference parameter to be filled with the length of
 *                   the received packet in bytes. If the ethernet server is not ready,
 *                   this value will be -1.
 *  \param src_port   A reference parameter to be filled with the ethernet
 *                   port the packet came from.
 **/

#pragma select handler
void mac_rx_p2(chanend c_mac,
            unsigned char buffer[],
            REFERENCE_PARAM(unsigned int, len),
            REFERENCE_PARAM(unsigned int, src_port));
/** Sends an ethernet frame to the Ethernet server on port 2.
 *  Frame includes dest/src MAC address(s), type and payload.
 *
 *
 *  \param c_mac     channel end to tx server.
 *  \param buffer[]  byte array containing the ethernet frame. *This must
 *                   be word aligned*
 *  \param nbytes    number of bytes in buffer
 *  \param ifnum     the number of the eth interface to transmit to
 *                   (use ETH_BROADCAST transmits to all ports)
 *
 */

void mac_tx_p2(chanend c_mac, unsigned int buffer[], int nbytes, int ifnum);


#define mac_rx_p2 ADD_SUFFIX(mac_rx_p2, ETHERNET_DEFAULT_IMPLEMENTATION)
#define mac_rx_p1 ADD_SUFFIX(mac_rx_p1, ETHERNET_DEFAULT_IMPLEMENTATION)
#define mac_tx_p2 ADD_SUFFIX(mac_tx_p2, ETHERNET_DEFAULT_IMPLEMENTATION)
#define mac_tx_p1 ADD_SUFFIX(mac_tx_p1, ETHERNET_DEFAULT_IMPLEMENTATION)
