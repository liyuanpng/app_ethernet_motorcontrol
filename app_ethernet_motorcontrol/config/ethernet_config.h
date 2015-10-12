#pragma once

// ########### CHANGE ONLY THIS MACRO ############
#define NODE    2

//IP ADDRESSES
// NOTE: YOU MAY NEED TO REDEFINE THIS TO AN IP ADDRESS THAT WORKS
// FOR YOUR NETWORK

/* Node 1 */
static const unsigned char IP_P1_NODE_1[4] = {192, 168, 101, 80};
static const unsigned char IP_P2_NODE_1[4] = {192, 168, 101, 81};
/* Node 2 */
static const unsigned char IP_P1_NODE_2[4] = {192, 168, 101, 82};
static const unsigned char IP_P2_NODE_2[4] = {192, 168, 101, 83};
/* Node 3 */
static const unsigned char IP_P1_NODE_3[4] = {192, 168, 101, 84};
static const unsigned char IP_P2_NODE_3[4] = {192, 168, 101, 85};
/* Node 4 */
static const unsigned char IP_P1_NODE_4[4] = {192, 168, 101, 86};
static const unsigned char IP_P2_NODE_4[4] = {192, 168, 101, 87};
/* Node 5 */
static const unsigned char IP_P1_NODE_5[4] = {192, 168, 101, 88};
static const unsigned char IP_P2_NODE_5[4] = {192, 168, 101, 89};
/* Node 6 */
static const unsigned char IP_P1_NODE_6[4] = {192, 168, 101, 90};
static const unsigned char IP_P2_NODE_6[4] = {192, 168, 101, 91};
/* Node 7 */
static const unsigned char IP_P1_NODE_7[4] = {192, 168, 101, 92};
static const unsigned char IP_P2_NODE_7[4] = {192, 168, 101, 93};

//MAC ADDRESSES

/* Node 1 */
static const unsigned char MAC_P1_NODE_1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x80};
static const unsigned char MAC_P2_NODE_1[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x81};
/* Node 2 */
static const unsigned char MAC_P1_NODE_2[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x82};
static const unsigned char MAC_P2_NODE_2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x83};
/* Node 3 */
static const unsigned char MAC_P1_NODE_3[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x84};
static const unsigned char MAC_P2_NODE_3[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x85};
/* Node 4 */
static const unsigned char MAC_P1_NODE_4[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x86};
static const unsigned char MAC_P2_NODE_4[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x87};
/* Node 5 */
static const unsigned char MAC_P1_NODE_5[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x88};
static const unsigned char MAC_P2_NODE_5[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x89};
/* Node 6 */
static const unsigned char MAC_P1_NODE_6[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x90};
static const unsigned char MAC_P2_NODE_6[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x91};
/* Node 7 */
static const unsigned char MAC_P1_NODE_7[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x92};
static const unsigned char MAC_P2_NODE_7[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x93};

// The next lines are just a joke. If you want to concat a #define macro with a string,
// you have to connect two functions (CONCAT1 and CONCAT2). With only one function it will not work...
#define CONCAT2(name, node) (name ## _ ## node)
#define CONCAT1(name, node) CONCAT2(name, node)

#define IP_ADDRESS_P1   CONCAT1(IP_P1_NODE,NODE)
#define IP_ADDRESS_P2   CONCAT1(IP_P2_NODE,NODE)

#define MAC_ADDRESS_P1  CONCAT1(MAC_P1_NODE,NODE)
#define MAC_ADDRESS_P2  CONCAT1(MAC_P2_NODE,NODE)

#define MAC_INPUT   MAC_ADDRESS_P1
#define MAC_OUTPUT  MAC_ADDRESS_P2


