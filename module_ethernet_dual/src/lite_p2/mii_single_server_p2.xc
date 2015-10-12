// Copyright (c) 2011, XMOS Ltd, All rights reserved
// This software is freely distributable under a derivative of the
// University of Illinois/NCSA Open Source License posted in
// LICENSE.txt and at <http://github.xcore.com/>

#include <xs1.h>
#include <xclib.h>
#include <print.h>
#include "mii_driver_p2.h"
#include "mii.h"
#include "mii_lite_p2.h"
#include "smi.h"
#include "mii_client_p2.h"
#include "ethernet_conf_derived.h"

#ifndef ETHERNET_LITE_RX_BUFSIZE
#define ETHERNET_LITE_RX_BUFSIZE (3200*4)
#endif

void init_macAddress(char mac[6], const unsigned char my_mac[6]){

    mac[0] = my_mac[0];
    mac[1] = my_mac[1];
    mac[2] = my_mac[2];
    mac[3] = my_mac[3];
    mac[4] = my_mac[4];
    mac[5] = my_mac[5];
}

extern void mac_set_macaddr_lite(unsigned char macaddr[]);

static void the_server(chanend cIn, chanend cOut, chanend cNotifications,
		smi_interface_t &?smi,
		chanend appIn, chanend appOut, char mac_address[6]) {
    int havePacket = 0;
    int outBytes;
    int nBytes, a, timeStamp;
    int b[ETHERNET_LITE_RX_BUFSIZE*2/4];
    int txbuf[400];
    timer linkcheck_timer;
    unsigned linkcheck_time;
	struct miiData miiData;
    mac_set_macaddr_lite(mac_address);

    mii_buffer_init(miiData, cIn, cNotifications, b, ETHERNET_LITE_RX_BUFSIZE*2/4);
    mii_out_init(cOut);
    
    linkcheck_timer :> linkcheck_time;

    while (1) {
        select {
		case linkcheck_timer when timerafter(linkcheck_time) :> void :
                  if (!isnull(smi))
			{
				static int phy_status = 0;
				int new_status = smi_check_link_state(smi);
				if (new_status != phy_status) {
                                  outuint(appIn, -1);
                                  appIn :> int _;
                                  appIn <: new_status;
                                  appIn <: 0;
                                  phy_status = new_status;
				}
			}
			linkcheck_time += 10000000;
			break;

        // Notification that there is a packet to receive (causes select to continue)
        case inuchar_byref(cNotifications, miiData.notifySeen):
            break;

        // Receive a packet from buffer
        case havePacket => appIn :> int _:
            for(int i = 0; i < ((nBytes + 3) >>2); i++) {
                int val;
                asm("ldw %0, %1[%2]" : "=r" (val) : "r" (a) , "r" (i));
                appIn <: val;
            }
            mii_free_in_buffer(miiData, a);
            mii_restart_buffer(miiData);
            {a,nBytes,timeStamp} = mii_get_in_buffer(miiData);
            if (a == 0) {
                havePacket = 0;
            } else {
                outuint(appIn, nBytes);
            }
            break;

        // Transmit a packet
        case appOut :> outBytes:
            for(int i = 0; i < ((outBytes + 3) >>2); i++) {
                appOut :> txbuf[i];
            }

            mii_out_packet(cOut, txbuf, 0, outBytes);
            mii_out_packet_done(cOut);
            break;
        }

        // Check that there is a packet
        if (!havePacket) {
            {a,nBytes,timeStamp} = mii_get_in_buffer(miiData);
            if (a != 0) {
                havePacket = 1;
                outuint(appIn, nBytes);
            }
        }
    } 
}


void mii_single_server(out port ?p_mii_resetn,
                     smi_interface_t &?smi,
                     mii_interface_lite_t &m,
                     chanend appIn, chanend appOut,
                     unsigned char mac_address[6]) {
    chan cIn, cOut;
    chan notifications;
	mii_initialise(p_mii_resetn, m);
#ifndef MII_NO_SMI_CONFIG
        if (!isnull(smi)) {
          smi_init(smi);
          eth_phy_config(1, smi);
        }
#endif
    par {
      {asm(""::"r"(notifications));mii_driver(m, cIn, cOut);}
        the_server(cIn, cOut, notifications, smi, appIn, appOut, mac_address);
    }

}

void ethernet_server_p2_lite(mii_interface_lite_t &m,
                          smi_interface_t &?smi,
                          const unsigned char mac_address[],
                          chanend c_rx, chanend c_tx)
{
  chan cIn, cOut;
  chan notifications;
  mii_port_init(m);
  char mac_address_p2[6];
  init_macAddress(mac_address_p2, mac_address);

  par {
    {asm(""::"r"(notifications));mii_driver(m, cIn, cOut);}
    the_server(cIn, cOut, notifications, smi,
              c_rx, c_tx, mac_address_p2);
  }
}


