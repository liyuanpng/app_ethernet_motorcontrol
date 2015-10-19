#pragma once

// ########### CHANGE ONLY THIS MACRO ############
#define NODE 7

//IP ADDRESSES
// NOTE: YOU MAY NEED TO REDEFINE THIS TO AN IP ADDRESS THAT WORKS
// FOR YOUR NETWORK

/* Node 1 */
#if NODE == 1
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 80};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 81};
/* Node 2 */
#elif NODE == 2
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 82};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 83};
/* Node 3 */
#elif NODE == 3
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 84};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 85};
/* Node 4 */
#elif NODE == 4
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 86};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 87};
/* Node 5 */
#elif NODE == 5
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 88};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 89};
/* Node 6 */
#elif NODE == 6
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 90};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 91};
/* Node 7 */
#elif NODE == 7
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 92};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 93};
#endif
//MAC ADDRESSES

/* Node 1 */
#if NODE == 1
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x80};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x81};
/* Node 2 */
#elif NODE == 2
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x82};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x83};
/* Node 3 */
#elif NODE == 3
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x84};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x85};
/* Node 4 */
#elif NODE == 4
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x86};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x87};
/* Node 5 */
#elif NODE == 5
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x88};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x89};
/* Node 6 */
#elif NODE == 6
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x90};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x91};
/* Node 7 */
#elif NODE == 7
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x92};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x93};
#endif

#define MAC_INPUT   MAC_ADDRESS_P1
#define MAC_OUTPUT  MAC_ADDRESS_P2


