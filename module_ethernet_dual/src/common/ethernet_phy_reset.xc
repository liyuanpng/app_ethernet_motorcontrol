#include <xs1.h>
#include "ethernet_dual_server.h"

#define ETHERNET_PHY_RESET_TIMER_TICKS 100

void eth_phy_reset(ethernet_reset_interface_t p_eth_rst) {
  timer tmr;
  int t;
  tmr :> t;
  p_eth_rst <: 0;
  tmr when timerafter(t + ETHERNET_PHY_RESET_TIMER_TICKS) :> t;
  p_eth_rst <: 1;
}


