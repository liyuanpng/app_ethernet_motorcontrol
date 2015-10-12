# 1 "../src/mac_filters.xc"
# 1 "mac_filters.h" 1
# 3 "mac_filters.h"
unsigned isBroadcast(char data[]);
unsigned isForMe(char data[], const unsigned char mac[]);

unsigned isARP(char data[]);
unsigned isIPV4(char data[]);
unsigned isIPV6(char data[]);
unsigned isSNCN(char data[]);
# 2 "../src/mac_filters.xc" 2

unsigned char ETHERTYPE_IPV4[2] = {0x08, 0x00};
unsigned char ETHERTYPE_IPV6[2] = {0x86, 0xDD};
unsigned char ETHERTYPE_ARP[2] = {0x08, 0x06};
unsigned char ETHERTYPE_PROFINET[2] = {0x88, 0x92};

unsigned char ETHERTYPE_SNCN[2] = {0x08, 0x01};

inline unsigned isEthertype(unsigned char data[], unsigned char type[]){
    int i =  12 ;
    return data[i] == type[0] && data[i + 1] == type[1];
}

unsigned isARP(char data[]){
    return isEthertype(data,ETHERTYPE_ARP);
}

unsigned isIPV4(char data[]){
    return isEthertype(data,ETHERTYPE_IPV4);
}

unsigned isIPV6(char data[]){
    return isEthertype(data,ETHERTYPE_IPV6);
}

unsigned isSNCN(char data[])
{
    return isEthertype(data,ETHERTYPE_SNCN);
}

unsigned isBroadcast(char data[])
{
    for (int i = 0; i < 6; i++){
          if (data[i +  0 ] != 0xFF){
            return 0;
          }
    }

    return 1;
}

unsigned isForMe(char data[], const unsigned char mac[]){

    for (int i = 0;i < 6;i++){
          if (data[i +  0 ] != mac[i]){
            return 0;
          }
    }

    return 1;
}
