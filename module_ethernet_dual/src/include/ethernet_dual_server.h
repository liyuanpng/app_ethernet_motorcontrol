#pragma once

#include "platform.h"
#include "ethernet_conf_derived.h"
#include "mii.h"
#include "smi.h"
#include "ethernet_server_lite_p1.h"
#include "ethernet_server_lite_p2.h"

typedef out port ethernet_reset_interface_t;  /**< Interface for the driving the reset of the PHY Ethernet transceiver. */

#define ETHERNET_DEFAULT_RESET_INTERFACE_INIT_P1 PORT_ETH_RST_N0
#define ETHERNET_DEFAULT_RESET_INTERFACE_INIT_P2 PORT_ETH_RST_N1

/** Ethernet PHY transceiver reset
 *
 *  \param eth_rst Reset interface
 *
 */
void eth_phy_reset(ethernet_reset_interface_t eth_rst);


/** Single MII port MAC/ethernet server on port 1
 *
 *  This function provides both MII layer and MAC layer functionality.
 *  It runs in 2 threads and communicates to clients over the channel parameters.
 *
 *  \param mii                  The mii interface resources that the
 *                              server will connect to
 *  \param smi                  An optional parameter of resources to connect
 *                              to a PHY (via SMI) to check when the link is up.
 *  \param mac_address          The mac_address the server will use.
 *                              This should be a two-word array that stores the
 *                              6-byte macaddr in a little endian manner (so
 *                              reinterpreting the array as a char array is as
 *                              one would expect)
 *  \param rx                   Chanend to connect to the client of the server
 *                              who wish to receive packets.
 *  \param tx                   Chanend to connect to the client of the server
 *                              who wish to transmit packets.
 *
 */
void ethernet_server_p1(mii_interface_t &mii,
                     smi_interface_t &?smi,
                     const unsigned char mac_address[],
                     chanend rx,
                     chanend tx);

/** Single MII port MAC/ethernet server on port 2
 *
 *  This function provides both MII layer and MAC layer functionality.
 *  It runs in 2 threads and communicates to clients over the channel parameters.
 *
 *  \param mii                  The mii interface resources that the
 *                              server will connect to
 *  \param smi                  An optional parameter of resources to connect
 *                              to a PHY (via SMI) to check when the link is up.
 *  \param mac_address          The mac_address the server will use.
 *                              This should be a two-word array that stores the
 *                              6-byte macaddr in a little endian manner (so
 *                              reinterpreting the array as a char array is as
 *                              one would expect)
 *  \param rx                   Chanend to connect to the client of the server
 *                              who wish to receive packets.
 *  \param tx                   Chanend to connect to the client of the server
 *                              who wish to transmit packets.
 *
 */
void ethernet_server_p2(mii_interface_t &mii,
                     smi_interface_t &?smi,
                     const unsigned char mac_address[],
                     chanend rx,
                     chanend tx);

#define ethernet_server_p2 ADD_SUFFIX(ethernet_server_p2, ETHERNET_DEFAULT_IMPLEMENTATION)
#define ethernet_server_p1 ADD_SUFFIX(ethernet_server_p1, ETHERNET_DEFAULT_IMPLEMENTATION)
