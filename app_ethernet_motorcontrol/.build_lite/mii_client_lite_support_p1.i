# 1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_lite_support_p1.c"
# 1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_lite_support_p1.c"
# 1 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 1 3 4
# 19 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 3 4
# 1 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/timer.h" 1 3 4
# 33 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/timer.h" 3 4
void delay_ticks(unsigned ticks);






void delay_ticks_longlong(unsigned long long ticks);





inline void delay_seconds(unsigned int delay) {
  delay_ticks_longlong(100U * 1000000 * (unsigned long long)delay);
}





inline void delay_milliseconds(unsigned delay) {
  delay_ticks_longlong(100U * 1000 * (unsigned long long)delay);
}





inline void delay_microseconds(unsigned delay) {
  delay_ticks_longlong(100U * (unsigned long long)delay);
}
# 20 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 2 3 4
# 33 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 3 4
# 1 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1_g4000b-512.h" 1 3 4
# 34 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 2 3 4





# 1 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1_user.h" 1 3 4
# 20 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1_user.h" 3 4
# 1 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1b_user.h" 1 3 4
# 21 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1_user.h" 2 3 4
# 40 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 2 3 4
# 1 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1_kernel.h" 1 3 4
# 20 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1_kernel.h" 3 4
# 1 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1b_kernel.h" 1 3 4
# 21 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1_kernel.h" 2 3 4
# 41 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 2 3 4
# 1 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1_registers.h" 1 3 4
# 20 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1_registers.h" 3 4
# 1 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1b_registers.h" 1 3 4
# 29 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1b_registers.h" 3 4
# 1 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1_g_registers.h" 1 3 4
# 30 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1b_registers.h" 2 3 4
# 1 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1_l_registers.h" 1 3 4
# 31 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1b_registers.h" 2 3 4
# 21 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1_registers.h" 2 3 4
# 42 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 2 3 4
# 1 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1_clock.h" 1 3 4
# 39 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1_clock.h" 3 4
typedef unsigned clock;
# 43 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 2 3 4
# 1538 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 3 4
unsigned getps(unsigned reg);
# 1549 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 3 4
void setps(unsigned reg, unsigned value);
# 1572 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 3 4
int read_pswitch_reg(unsigned tileid, unsigned reg, unsigned *data);
# 1596 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 3 4
int read_sswitch_reg(unsigned tileid, unsigned reg, unsigned *data);
# 1616 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 3 4
int write_pswitch_reg(unsigned tileid, unsigned reg, unsigned data);
# 1636 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 3 4
int write_pswitch_reg_no_ack(unsigned tileid, unsigned reg, unsigned data);
# 1655 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 3 4
int write_sswitch_reg(unsigned tileid, unsigned reg, unsigned data);
# 1676 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 3 4
int write_sswitch_reg_no_ack(unsigned tileid, unsigned reg, unsigned data);
# 1910 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 3 4
unsigned get_local_tile_id(void);
# 1929 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 3 4
unsigned get_logical_core_id(void);
# 1946 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xs1.h" 3 4
__attribute__((deprecated)) static inline unsigned get_core_id(void) {
  return get_local_tile_id();
}
__attribute__((deprecated)) static inline unsigned get_thread_id(void) {
  return __builtin_getid();
}
# 2 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_lite_support_p1.c" 2
# 1 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xccompat.h" 1 3 4
# 122 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xccompat.h" 3 4
typedef unsigned chanend;






typedef unsigned timer;






typedef unsigned port;




typedef unsigned streaming_chanend_t;





typedef unsigned in_buffered_port_1_t;




typedef unsigned in_buffered_port_4_t;




typedef unsigned in_buffered_port_8_t;




typedef unsigned in_buffered_port_16_t;




typedef unsigned in_buffered_port_32_t;




typedef unsigned out_buffered_port_1_t;




typedef unsigned out_buffered_port_4_t;




typedef unsigned out_buffered_port_8_t;




typedef unsigned out_buffered_port_16_t;




typedef unsigned out_buffered_port_32_t;
# 3 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_lite_support_p1.c" 2
# 1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/common/ethernet_conf_derived.h" 1
       

# 1 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/platform.h" 1 3 4
# 21 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/platform.h" 3 4
# 1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/SOMANET-C22.h" 1 3 4
# 22 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/platform.h" 2 3 4
# 4 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/common/ethernet_conf_derived.h" 2
# 4 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_lite_support_p1.c" 2
# 1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/include_p1/ethernet_rx_client_p1.h" 1




       


# 1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/include_p1/ethernet_rx_client_lite_p1.h" 1
# 18 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/include_p1/ethernet_rx_client_lite_p1.h"
       
# 47 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/include_p1/ethernet_rx_client_lite_p1.h"
void mac_rx_p1_lite(chanend c_mac,
                 unsigned char buffer[],
                 unsigned int *len,
                 unsigned int *src_port);
# 72 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/include_p1/ethernet_rx_client_lite_p1.h"
void _safe_mac_rx_lite(chanend c_mac,
                      unsigned char buffer[],
                      unsigned int *len,
                      unsigned int *src_port,
                      int n);
# 9 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/include_p1/ethernet_rx_client_p1.h" 2
# 32 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/include_p1/ethernet_rx_client_p1.h"
void _safe_mac_rx(chanend c_mac,
                 unsigned char buffer[],
                 unsigned int *len,
                 unsigned int *src_port,
                 int n);
# 5 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_lite_support_p1.c" 2
# 1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/include_p1/ethernet_tx_client_p1.h" 1
# 17 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/include_p1/ethernet_tx_client_p1.h"
       


# 1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/include_p1/ethernet_tx_client_lite_p1.h" 1
# 17 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/include_p1/ethernet_tx_client_lite_p1.h"
       
# 34 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/include_p1/ethernet_tx_client_lite_p1.h"
void mac_tx_p1_lite(chanend c_mac, unsigned int buffer[], int nbytes, int ifnum);
# 48 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/include_p1/ethernet_tx_client_lite_p1.h"
int _mac_get_macaddr_lite(chanend c_mac, unsigned char macaddr[]);
# 21 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/include_p1/ethernet_tx_client_p1.h" 2
# 33 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/include_p1/ethernet_tx_client_p1.h"
int _mac_get_macaddr(chanend c_mac, unsigned char macaddr[]);
# 6 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_lite_support_p1.c" 2

static unsigned char _mac_s_macaddr[6];

void _mac_set_macaddr_lite(unsigned char macaddr[]) {
 for (int i=0; i<6; ++i) _mac_s_macaddr[i] = macaddr[i];
}

int _mac_get_macaddr_lite(chanend c_mac, unsigned char macaddr[]) {
 volatile unsigned* m = (unsigned*)_mac_s_macaddr;
 while (*m==0);
 for (int i=0; i<6; ++i) macaddr[i] = _mac_s_macaddr[i];
    return 1;
}
