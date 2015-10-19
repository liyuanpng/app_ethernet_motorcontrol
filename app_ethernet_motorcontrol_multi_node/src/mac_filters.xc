#include <mac_filters.h>

unsigned char ETHERTYPE_IPV4[2] = {0x08, 0x00};
unsigned char ETHERTYPE_IPV6[2] = {0x86, 0xDD};
unsigned char ETHERTYPE_ARP[2] = {0x08, 0x06};
unsigned char ETHERTYPE_PROFINET[2] = {0x88, 0x92};

unsigned char ETHERTYPE_SNCN[2] = {0x08, 0x01};

// FIXME this function is actually inline, but now it throw errors...
unsigned isEthertype(unsigned char data[], unsigned char type[]){
    int i = ETHERTYPE_BYTE;
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
          if (data[i + DST_MAC_BYTE] != 0xFF){
            return 0;
          }
    }

    return 1;
}

unsigned isForMe(char data[], const unsigned char mac[]){

    for (int i = 0;i < 6;i++){
          if (data[i + DST_MAC_BYTE] != mac[i]){
            return 0;
          }
    }

    return 1;
}

