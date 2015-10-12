# 1 "../src/mac_addr.xc"
# 1 "mac_addr.h" 1
# 4 "mac_addr.h"
void showMAC(const unsigned char mac[6]);
# 2 "../src/mac_addr.xc" 2
# 1 "print.h" 1 3
# 34 "print.h" 3
int printchar(char value);
# 40 "print.h" 3
int printcharln(char value);
# 46 "print.h" 3
int printint(int value);
# 52 "print.h" 3
int printintln(int value);
# 58 "print.h" 3
int printuint(unsigned value);
# 64 "print.h" 3
int printuintln(unsigned value);
# 70 "print.h" 3
int printllong(long long value);
# 76 "print.h" 3
int printllongln(long long value);
# 82 "print.h" 3
int printullong(unsigned long long value);
# 88 "print.h" 3
int printullongln(unsigned long long value);
# 95 "print.h" 3
int printhex(unsigned value);
# 102 "print.h" 3
int printhexln(unsigned value);
# 109 "print.h" 3
int printllonghex(unsigned long long value);
# 116 "print.h" 3
int printllonghexln(unsigned long long value);
# 123 "print.h" 3
int printstr(const char (& alias s)[]);
# 133 "print.h" 3
int printstrln(const char (& alias s)[]);
# 3 "../src/mac_addr.xc" 2

void showMAC(const unsigned char mac[6]){

    printhex(mac[0]); printstr(":");
    printhex(mac[1]); printstr(":");
    printhex(mac[2]); printstr(":");
    printhex(mac[3]); printstr(":");
    printhex(mac[4]); printstr(":");
    printhex(mac[5]); printstr("\n");
}
