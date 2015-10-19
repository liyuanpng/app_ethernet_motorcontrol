#include <mac_addr.h>
#include <print.h>

void showMAC(const unsigned char mac[6]){

    printhex(mac[0]); printstr(":");
    printhex(mac[1]); printstr(":");
    printhex(mac[2]); printstr(":");
    printhex(mac[3]); printstr(":");
    printhex(mac[4]); printstr(":");
    printhex(mac[5]); printstr("\n");
}
