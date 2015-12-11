#pragma once

// ########### CHANGE ONLY THIS MACRO ############
#define NODE 1

//IP ADDRESSES
// NOTE: YOU MAY NEED TO REDEFINE THIS TO AN IP ADDRESS THAT WORKS
// FOR YOUR NETWORK

#if NODE == 1
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 80};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 81};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x01};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x01};
#elif NODE == 2
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 82};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 83};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x02};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x02};
#elif NODE == 3
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 84};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 85};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x03};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x03};
#elif NODE == 4
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 86};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 87};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x04};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x04};
#elif NODE == 5
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 88};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 89};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x05};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x05};
#elif NODE == 6
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 90};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 91};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x06};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x06};
#elif NODE == 7
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 92};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 93};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x07};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x07};
#elif NODE == 8
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 94};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 95};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x08};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x08};
#elif NODE == 9
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 96};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 97};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x09};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x09};
#elif NODE == 10
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 98};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 99};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x0A};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x0A};
#elif NODE == 11
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 100};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 101};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x0B};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x0B};
#elif NODE == 12
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 102};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 103};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x0C};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x0C};
#elif NODE == 13
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 104};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 105};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x0D};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x0D};
#elif NODE == 14
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 106};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 107};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x0E};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x0E};
#elif NODE == 15
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 108};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 109};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x0F};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x0F};
#elif NODE == 16
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 110};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 111};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x10};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x10};
#elif NODE == 17
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 112};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 113};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x11};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x11};
#elif NODE == 18
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 114};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 115};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x12};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x12};
#elif NODE == 19
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 116};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 117};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x13};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x13};
#elif NODE == 20
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 118};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 119};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x14};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x14};
#elif NODE == 21
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 120};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 121};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x15};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x15};
#elif NODE == 22
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 122};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 123};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x16};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x16};
#elif NODE == 23
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 124};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 125};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x17};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x17};
#elif NODE == 24
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 126};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 127};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x18};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x18};
#elif NODE == 25
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 128};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 129};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x19};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x19};
#elif NODE == 26
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 130};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 131};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x1A};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x1A};
#elif NODE == 27
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 132};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 133};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x1B};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x1B};
#elif NODE == 28
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 134};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 135};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x1C};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x1C};
#elif NODE == 29
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 136};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 137};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x1D};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x1D};
#elif NODE == 30
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 138};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 139};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x1E};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x1E};
#elif NODE == 31
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 140};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 141};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x1F};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x1F};
#elif NODE == 32
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 142};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 143};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x20};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x20};
#elif NODE == 33
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 144};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 145};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x21};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x21};
#elif NODE == 34
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 146};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 147};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x22};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x22};
#elif NODE == 35
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 148};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 149};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x23};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x23};
#elif NODE == 36
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 150};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 151};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x24};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x24};
#elif NODE == 37
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 152};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 153};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x25};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x25};
#elif NODE == 38
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 154};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 155};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x26};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x26};
#elif NODE == 39
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 156};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 157};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x27};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x27};
#elif NODE == 40
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 158};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 159};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x28};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x28};
#elif NODE == 41
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 160};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 161};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x29};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x29};
#elif NODE == 42
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 162};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 163};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x2A};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x2A};
#elif NODE == 43
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 164};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 165};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x2B};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x2B};
#elif NODE == 44
static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 166};
static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 167};
static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x2C};
static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x2C};
#endif


#define MAC_INPUT   MAC_ADDRESS_P1
#define MAC_OUTPUT  MAC_ADDRESS_P2

//#pragma message "Node has MAC address: %x:%x:%x:%x:%x:%x" //, MAC_ADDRESS_P1[0],MAC_ADDRESS_P1[1],MAC_ADDRESS_P1[2],MAC_ADDRESS_P1[3],MAC_ADDRESS_P1[4],MAC_ADDRESS_P1[5]


