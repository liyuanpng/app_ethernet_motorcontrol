# 1 "../src/top_layer.xc"
# 1 "ethernet_hub_client.h" 1
# 13 "ethernet_hub_client.h"
void passFrameToHub(chanend c, const unsigned char buffer[], int nbytes);
# 17 "ethernet_hub_client.h"
#pragma select handler
# 39 "ethernet_hub_client.h"
void fetchFrameFromHub(chanend c, unsigned buffer[], int &nbytes);
# 2 "../src/top_layer.xc" 2
# 1 "mac_filters.h" 1
# 3 "mac_filters.h"
unsigned isBroadcast(char data[]);
unsigned isForMe(char data[], const unsigned char mac[]);

unsigned isARP(char data[]);
unsigned isIPV4(char data[]);
unsigned isIPV6(char data[]);
unsigned isSNCN(char data[]);
# 3 "../src/top_layer.xc" 2
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
# 4 "../src/top_layer.xc" 2

void topLayer(chanend dataFromP1, chanend dataToP1, chanend dataFromP2, chanend dataToP2){


    int nbytes;
    unsigned rxbuffer[400];

    while(1){
       select{

           case fetchFrameFromHub(dataFromP1, rxbuffer, nbytes):
                           break;

           case fetchFrameFromHub(dataFromP2, rxbuffer, nbytes):
                           break;
       }

       if( isARP((rxbuffer,char[])) && isBroadcast((rxbuffer,char[]))){
             printstrln("Packet for us");
       }
    }
}
