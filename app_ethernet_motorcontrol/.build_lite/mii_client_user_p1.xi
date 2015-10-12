# 1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
# 6 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
# 1 "xs1.h" 1 3
# 19 "xs1.h" 3
# 1 "timer.h" 1 3
# 33 "timer.h" 3
void delay_ticks(unsigned ticks);
# 40 "timer.h" 3
void delay_ticks_longlong(unsigned long long ticks);
# 46 "timer.h" 3
inline void delay_seconds(unsigned int delay) {
  delay_ticks_longlong( 100U  * 1000000 * (unsigned long long)delay);
}
# 54 "timer.h" 3
inline void delay_milliseconds(unsigned delay) {
  delay_ticks_longlong( 100U  * 1000 * (unsigned long long)delay);
}
# 62 "timer.h" 3
inline void delay_microseconds(unsigned delay) {
  delay_ticks_longlong( 100U  * (unsigned long long)delay);
}
# 20 "xs1.h" 2 3
# 33 "xs1.h" 3
# 1 "xs1_g4000b-512.h" 1 3
# 34 "xs1.h" 2 3
# 39 "xs1.h" 3
# 1 "xs1_user.h" 1 3
# 20 "xs1_user.h" 3
# 1 "xs1b_user.h" 1 3
# 21 "xs1_user.h" 2 3
# 40 "xs1.h" 2 3
# 1 "xs1_kernel.h" 1 3
# 20 "xs1_kernel.h" 3
# 1 "xs1b_kernel.h" 1 3
# 21 "xs1_kernel.h" 2 3
# 41 "xs1.h" 2 3
# 1 "xs1_registers.h" 1 3
# 20 "xs1_registers.h" 3
# 1 "xs1b_registers.h" 1 3
# 29 "xs1b_registers.h" 3
# 1 "xs1_g_registers.h" 1 3
# 30 "xs1b_registers.h" 2 3
# 1 "xs1_l_registers.h" 1 3
# 31 "xs1b_registers.h" 2 3
# 21 "xs1_registers.h" 2 3
# 42 "xs1.h" 2 3
# 1 "xs1_clock.h" 1 3
# 43 "xs1.h" 2 3
# 72 "xs1.h" 3
void configure_in_port_handshake(void port p, in port readyin,
                                 out port readyout,  __clock_t  clk);
# 101 "xs1.h" 3
void configure_out_port_handshake(void port p, in port readyin,
                                 out port readyout,  __clock_t  clk,
                                 unsigned initial);
# 127 "xs1.h" 3
void configure_in_port_strobed_master(void port p, out port readyout,
                                      const  __clock_t  clk);
# 150 "xs1.h" 3
void configure_out_port_strobed_master(void port p, out port readyout,
                                      const  __clock_t  clk, unsigned initial);
# 172 "xs1.h" 3
void configure_in_port_strobed_slave(void port p, in port readyin,  __clock_t  clk);
# 197 "xs1.h" 3
void configure_out_port_strobed_slave(void port p, in port readyin,  __clock_t  clk,
                                      unsigned initial);
# 221 "xs1.h" 3
void configure_in_port(void port p, const  __clock_t  clk);
# 227 "xs1.h" 3
void configure_in_port_no_ready(void port p, const  __clock_t  clk);
# 250 "xs1.h" 3
void configure_out_port(void port p, const  __clock_t  clk, unsigned initial);
# 256 "xs1.h" 3
void configure_out_port_no_ready(void port p, const  __clock_t  clk, unsigned initial);
# 266 "xs1.h" 3
void configure_port_clock_output(void port p, const  __clock_t  clk);
# 275 "xs1.h" 3
void start_port(void port p);
# 282 "xs1.h" 3
void stop_port(void port p);
# 295 "xs1.h" 3
void configure_clock_src( __clock_t  clk, void port p);
# 309 "xs1.h" 3
void configure_clock_ref( __clock_t  clk, unsigned char divide);
# 325 "xs1.h" 3
void configure_clock_rate( __clock_t  clk, unsigned a, unsigned b);
# 339 "xs1.h" 3
void configure_clock_rate_at_least( __clock_t  clk, unsigned a, unsigned b);
# 353 "xs1.h" 3
void configure_clock_rate_at_most( __clock_t  clk, unsigned a, unsigned b);
# 366 "xs1.h" 3
void set_clock_src( __clock_t  clk, void port p);
# 379 "xs1.h" 3
void set_clock_ref( __clock_t  clk);
# 395 "xs1.h" 3
void set_clock_div( __clock_t  clk, unsigned char div);
# 410 "xs1.h" 3
void set_clock_rise_delay( __clock_t  clk, unsigned n);
# 425 "xs1.h" 3
void set_clock_fall_delay( __clock_t  clk, unsigned n);
# 445 "xs1.h" 3
void set_port_clock(void port p, const  __clock_t  clk);
# 463 "xs1.h" 3
void set_port_ready_src(void port p, void port ready);
# 481 "xs1.h" 3
void set_clock_ready_src( __clock_t  clk, void port ready);
# 491 "xs1.h" 3
void set_clock_on( __clock_t  clk);
# 501 "xs1.h" 3
void set_clock_off( __clock_t  clk);
# 511 "xs1.h" 3
void start_clock( __clock_t  clk);
# 519 "xs1.h" 3
void stop_clock( __clock_t  clk);
# 529 "xs1.h" 3
void set_port_use_on(void port p);
# 539 "xs1.h" 3
void set_port_use_off(void port p);
# 549 "xs1.h" 3
void set_port_mode_data(void port p);
# 561 "xs1.h" 3
void set_port_mode_clock(void port p);
# 582 "xs1.h" 3
void set_port_mode_ready(void port p);
# 593 "xs1.h" 3
void set_port_drive(void port p);
# 609 "xs1.h" 3
void set_port_drive_low(void port p);
# 624 "xs1.h" 3
void set_port_pull_up(void port p);
# 639 "xs1.h" 3
void set_port_pull_down(void port p);
# 649 "xs1.h" 3
void set_port_pull_none(void port p);
# 663 "xs1.h" 3
void set_port_master(void port p);
# 677 "xs1.h" 3
void set_port_slave(void port p);
# 691 "xs1.h" 3
void set_port_no_ready(void port p);
# 706 "xs1.h" 3
void set_port_strobed(void port p);
# 719 "xs1.h" 3
void set_port_handshake(void port p);
# 728 "xs1.h" 3
void set_port_no_sample_delay(void port p);
# 737 "xs1.h" 3
void set_port_sample_delay(void port p);
# 745 "xs1.h" 3
void set_port_no_inv(void port p);
# 756 "xs1.h" 3
void set_port_inv(void port p);
# 779 "xs1.h" 3
void set_port_shift_count( void port p, unsigned n);
# 794 "xs1.h" 3
void set_pad_delay(void port p, unsigned n);
# 834 "xs1.h" 3
void set_core_fast_mode_on(void);
# 842 "xs1.h" 3
void set_core_fast_mode_off(void);
# 865 "xs1.h" 3
void outuchar(chanend c, unsigned char val);
# 880 "xs1.h" 3
void outuint(chanend c, unsigned val);
# 896 "xs1.h" 3
unsigned char inuchar(chanend c);
# 912 "xs1.h" 3
unsigned inuint(chanend c);
# 929 "xs1.h" 3
void inuchar_byref(chanend c, unsigned char &val);
# 947 "xs1.h" 3
void inuint_byref(chanend c, unsigned &val);
# 957 "xs1.h" 3
void sync(void port p);
# 968 "xs1.h" 3
unsigned peek(void port p);
# 982 "xs1.h" 3
void clearbuf(void port p);
# 998 "xs1.h" 3
unsigned endin( void port p);
# 1015 "xs1.h" 3
unsigned partin( void port p, unsigned n);
# 1031 "xs1.h" 3
void partout( void port p, unsigned n, unsigned val);
# 1049 "xs1.h" 3
unsigned partout_timed( void port p, unsigned n, unsigned val, unsigned t);
# 1067 "xs1.h" 3
{unsigned , unsigned } partin_timestamped( void port p, unsigned n);
# 1085 "xs1.h" 3
unsigned partout_timestamped( void port p, unsigned n, unsigned val);
# 1099 "xs1.h" 3
void outct(chanend c, unsigned char val);
# 1114 "xs1.h" 3
void chkct(chanend c, unsigned char val);
# 1129 "xs1.h" 3
unsigned char inct(chanend c);
# 1144 "xs1.h" 3
void inct_byref(chanend c, unsigned char &val);
# 1158 "xs1.h" 3
int testct(chanend c);
# 1171 "xs1.h" 3
int testwct(chanend c);
# 1186 "xs1.h" 3
void soutct(streaming chanend c, unsigned char val);
# 1202 "xs1.h" 3
void schkct(streaming chanend c, unsigned char val);
# 1218 "xs1.h" 3
unsigned char sinct(streaming chanend c);
# 1234 "xs1.h" 3
void sinct_byref(streaming chanend c, unsigned char &val);
# 1248 "xs1.h" 3
int stestct(streaming chanend c);
# 1262 "xs1.h" 3
int stestwct(streaming chanend c);
# 1276 "xs1.h" 3
transaction out_char_array(chanend c, const char src[size], unsigned size);
# 1289 "xs1.h" 3
transaction in_char_array(chanend c, char src[size], unsigned size);
# 1302 "xs1.h" 3
void sout_char_array(streaming chanend c, const char src[size], unsigned size);
# 1315 "xs1.h" 3
void sin_char_array(streaming chanend c, char src[size], unsigned size);
# 1338 "xs1.h" 3
void crc32(unsigned &checksum, unsigned data, unsigned poly);
# 1362 "xs1.h" 3
unsigned crc8shr(unsigned &checksum, unsigned data, unsigned poly);
# 1377 "xs1.h" 3
{unsigned, unsigned} lmul(unsigned a, unsigned b, unsigned c, unsigned d);
# 1391 "xs1.h" 3
{unsigned, unsigned} mac(unsigned a, unsigned b, unsigned c, unsigned d);
# 1405 "xs1.h" 3
{signed, unsigned} macs(signed a, signed b, signed c, unsigned d);
# 1419 "xs1.h" 3
signed sext(unsigned a, unsigned b);
# 1433 "xs1.h" 3
unsigned zext(unsigned a, unsigned b);
# 1446 "xs1.h" 3
void pinseq(unsigned val);
# 1459 "xs1.h" 3
void pinsneq(unsigned val);
# 1474 "xs1.h" 3
void pinseq_at(unsigned val, unsigned time);
# 1489 "xs1.h" 3
void pinsneq_at(unsigned val, unsigned time);
# 1502 "xs1.h" 3
void timerafter(unsigned val);
# 1538 "xs1.h" 3
unsigned getps(unsigned reg);
# 1549 "xs1.h" 3
void setps(unsigned reg, unsigned value);
# 1570 "xs1.h" 3
int read_pswitch_reg(unsigned tileid, unsigned reg, unsigned &data);
# 1594 "xs1.h" 3
int read_sswitch_reg(unsigned tileid, unsigned reg, unsigned &data);
# 1616 "xs1.h" 3
int write_pswitch_reg(unsigned tileid, unsigned reg, unsigned data);
# 1636 "xs1.h" 3
int write_pswitch_reg_no_ack(unsigned tileid, unsigned reg, unsigned data);
# 1655 "xs1.h" 3
int write_sswitch_reg(unsigned tileid, unsigned reg, unsigned data);
# 1676 "xs1.h" 3
int write_sswitch_reg_no_ack(unsigned tileid, unsigned reg, unsigned data);
# 1691 "xs1.h" 3
int read_tile_config_reg(tileref tile, unsigned reg, unsigned &data);
# 1705 "xs1.h" 3
int write_tile_config_reg(tileref tile, unsigned reg, unsigned data);
# 1720 "xs1.h" 3
int write_tile_config_reg_no_ack(tileref tile, unsigned reg, unsigned data);
# 1742 "xs1.h" 3
int read_node_config_reg(tileref tile, unsigned reg, unsigned &data);
# 1757 "xs1.h" 3
int write_node_config_reg(tileref tile, unsigned reg, unsigned data);
# 1773 "xs1.h" 3
int write_node_config_reg_no_ack(tileref tile, unsigned reg, unsigned data);
# 1792 "xs1.h" 3
int read_periph_8(tileref tile, unsigned peripheral, unsigned base_address,
                  unsigned size, unsigned char data[size]);
# 1811 "xs1.h" 3
int write_periph_8(tileref tile, unsigned peripheral, unsigned base_address,
                   unsigned size, const unsigned char data[size]);
# 1832 "xs1.h" 3
int write_periph_8_no_ack(tileref tile, unsigned peripheral,
                          unsigned base_address, unsigned size,
                          const unsigned char data[size]);
# 1854 "xs1.h" 3
int read_periph_32(tileref tile, unsigned peripheral, unsigned base_address,
                   unsigned size, unsigned data[size]);
# 1875 "xs1.h" 3
int write_periph_32(tileref tile, unsigned peripheral, unsigned base_address,
                    unsigned size, const unsigned data[size]);
# 1898 "xs1.h" 3
int write_periph_32_no_ack(tileref tile, unsigned peripheral,
                           unsigned base_address, unsigned size,
                           const unsigned data[size]);
# 1910 "xs1.h" 3
unsigned get_local_tile_id(void);
# 1920 "xs1.h" 3
unsigned get_tile_id(tileref t);
# 1929 "xs1.h" 3
unsigned get_logical_core_id(void);
# 1934 "xs1.h" 3
extern int __builtin_getid(void);
# 7 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc" 2
# 1 "xclib.h" 1 3
# 35 "xclib.h" 3
unsigned bitrev(unsigned x);
# 46 "xclib.h" 3
unsigned byterev(unsigned x);
# 59 "xclib.h" 3
int clz(unsigned x);
# 8 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc" 2
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
# 9 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc" 2
# 1 "mii_client_p1.h" 1








struct miiData {
    int nextBuffer;
    int packetInLLD;
    unsigned notificationChannelEnd;
    unsigned miiChannelEnd;
    int miiPacketsOverran;
    int refillBankNumber;
    int freePtr[2], wrPtr[2], lastSafePtr[2], firstPtr[2], readPtr[2];
    char notifyLast;
    char notifySeen;
    char pad0, pad1;
    int miiPacketsTransmitted;
    int miiPacketsReceived;
    int miiPacketsCRCError;
    int readBank;
    int kernelStack[ 128 ];
};
# 41 "mii_client_p1.h"
extern void _mii_buffer_init(struct miiData &this, chanend cIn, chanend cNotifications, int buffer[], int words);
# 52 "mii_client_p1.h"
void _mii_close(chanend cNotifications, chanend cIn, chanend cOut);
# 62 "mii_client_p1.h"
{unsigned, unsigned, unsigned} extern _mii_get_in_buffer(struct miiData &this);
# 75 "mii_client_p1.h"
extern void _mii_free_in_buffer(struct miiData &this, int address);
# 92 "mii_client_p1.h"
extern select _mii_notified(struct miiData &this, chanend notificationChannel);
# 99 "mii_client_p1.h"
extern void _mii_restart_buffer(struct miiData &this);
# 110 "mii_client_p1.h"
void _mii_out_init(chanend cOut);
# 135 "mii_client_p1.h"
int _mii_out_packet(chanend cOut, int buf[], int index, int length);
# 158 "mii_client_p1.h"
int _mii_out_packet_(chanend c_out, int buf, int length);
# 169 "mii_client_p1.h"
#pragma select handler
void _mii_out_packet_done(chanend cOut);
# 10 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc" 2
# 1 "mii_lld_p1.h" 1
extern unsigned int _tailValues[4];
extern void _miiLLD(buffered in port:32 rxd, in port rxdv, buffered out port:32 txd,
                   chanend INchannel, chanend OUTchannel, in port timing,
                   timer tmr);
# 11 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc" 2



extern void _mii_install_handler(struct miiData &this,
                                int bufferAddr,
                                chanend miiChannel,
                                chanend notificationChannel);


static int _value_1(int address) {
    int retVal;
    asm("ldw %0, %1[1]" : "=r" (retVal) : "r" (address));
    return retVal;
}

static int _value_2(int address) {
    int retVal;
    asm("ldw %0, %1[2]" : "=r" (retVal) : "r" (address));
    return retVal;
}

static int _value_3(int address) {
    int retVal;
    asm("ldw %0, %1[3]" : "=r" (retVal) : "r" (address));
    return retVal;
}

static int _CRCBad(int base, int end) {
    unsigned int tailBits = _value_1(end);
    unsigned int tailLength = _value_2(end);
    unsigned int partCRC = _value_3(end);
    unsigned int length = end - base + (tailLength >> 3);
    switch(tailLength >> 3) {
    case 0:
        break;
    case 1:
        tailBits >>= 24;
        tailBits =  __builtin_crc8shr(partCRC, tailBits, 0xEDB88320 ) ;
        break;
    case 2:
        tailBits >>= 16;
        tailBits =  __builtin_crc8shr(partCRC, tailBits, 0xEDB88320 ) ;
        tailBits =  __builtin_crc8shr(partCRC, tailBits, 0xEDB88320 ) ;
        break;
    case 3:
        tailBits >>= 8;
        tailBits =  __builtin_crc8shr(partCRC, tailBits, 0xEDB88320 ) ;
        tailBits =  __builtin_crc8shr(partCRC, tailBits, 0xEDB88320 ) ;
        tailBits =  __builtin_crc8shr(partCRC, tailBits, 0xEDB88320 ) ;
        break;
    }
    return ~partCRC == 0 ? length : 0;
}

static int _packetGood(struct miiData &this, int base, int end) {
    int length = _CRCBad(base, end);

    if (length == 0) {
        this.miiPacketsCRCError++;
        return 0;
    }

    this.miiPacketsReceived++;
    return length;
}
# 111 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
static void _set(int addr, int value) {
    asm("stw %0, %1[0]" :: "r" (value), "r" (addr));
}

static int _get(int addr) {
    int value;
    asm("ldw %0, %1[0]" : "=r" (value) : "r" (addr));
    return value;
}



void _mii_buffer_init(struct miiData &this, chanend cIn, chanend cNotifications, int buffer[], int numberWords) {
    int address;
    this.notifySeen = 1;
    this.notifyLast = 1;
    asm("add %0, %1, 0" : "=r" (address) : "r" (buffer));
    this.readPtr[0] = this.firstPtr[0] = this.freePtr[0] = address ;
    this.readPtr[1] = this.firstPtr[1] = this.freePtr[1] = address + ((numberWords << 1) & ~3) ;
    this.wrPtr[0] = this.freePtr[0] + 4;
    this.wrPtr[1] = this.freePtr[1] + 4;
    _set(this.freePtr[0], 1);
    _set(this.freePtr[1], 1);
    this.lastSafePtr[0] = this.freePtr[1] -  1530 ;
    this.lastSafePtr[1] = address + (numberWords << 2) -  1530 ;
    this.nextBuffer = this.wrPtr[1];
    this.miiPacketsOverran = 0;
    this.refillBankNumber = 0;
    this.miiPacketsTransmitted = 0;
    this.miiPacketsReceived = 0;
    this.miiPacketsCRCError = 0;
    this.readBank = 0;
    _mii_install_handler(this, this.wrPtr[0], cIn, cNotifications);
}




void _miiNotify(struct miiData &this, chanend notificationChannel) {
    if (this.notifyLast == this.notifySeen) {
        this.notifyLast = !this.notifyLast;
        __builtin_out_uchar(notificationChannel, this.notifyLast) ;
    }
}

select _mii_notified(struct miiData &this, chanend notificationChannel) {
case  __builtin_in_uchar_byref(notificationChannel, this.notifySeen) :
    break;
}
# 161 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
#pragma unsafe arrays
{unsigned, unsigned, unsigned} _mii_get_in_buffer(struct miiData &this) {
    unsigned nBytes, timeStamp;
    for(int i = 0; i < 2; i++) {
        this.readBank = !this.readBank;
        nBytes = _get(this.readPtr[this.readBank]);
        if (nBytes == 0) {
            this.readPtr[this.readBank] = this.firstPtr[this.readBank];
            nBytes = _get(this.readPtr[this.readBank]);
        }
        if (nBytes != 1) {
            unsigned retVal = this.readPtr[this.readBank] + 4;
            this.readPtr[this.readBank] += ((nBytes + 3) & ~3) + 4;
            if (_get(this.readPtr[this.readBank]) == 0) {
                this.readPtr[this.readBank] = this.firstPtr[this.readBank];
            }
            timeStamp = _get(retVal);
            return {retVal+4, nBytes-4, timeStamp};
        }
    }
    return {0, 0, 0};
}
# 184 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
#pragma unsafe arrays
static void _miiCommitBuffer(struct miiData &this, unsigned int currentBuffer, unsigned int length, chanend notificationChannel) {
    int bn = currentBuffer < this.firstPtr[1] ? 0 : 1;
    _set(this.wrPtr[bn]-4, length);
    this.wrPtr[bn] = this.wrPtr[bn] + ((length+3)&~3) + 4;
    _miiNotify(this, notificationChannel);
    if (this.wrPtr[bn] > this.lastSafePtr[bn]) {
        if (this.freePtr[bn] != this.firstPtr[bn]) {
            _set(this.wrPtr[bn]-4, 0);
            this.wrPtr[bn] = this.firstPtr[bn] + 4;
            _set(this.wrPtr[bn]-4, 1);
            if (this.freePtr[bn] - this.wrPtr[bn] >=  1530 ) {
                this.nextBuffer = this.wrPtr[bn];
                return;
            }
        } else {
            _set(this.wrPtr[bn]-4, 1);
        }
    } else {
        _set(this.wrPtr[bn]-4, 1);
        if (this.wrPtr[bn] > this.freePtr[bn] ||
            this.freePtr[bn] - this.wrPtr[bn] >=  1530 ) {
            this.nextBuffer = this.wrPtr[bn];
            return;
        }
    }
    this.nextBuffer = -1;
    this.refillBankNumber = bn;
    return;
}

static void _miiRejectBuffer(struct miiData &this, unsigned int currentBuffer) {
    this.nextBuffer = currentBuffer;
}
# 219 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
#pragma unsafe arrays
void _mii_restart_buffer(struct miiData &this) {
    int bn;
    if (this.nextBuffer != -1) {
        return;
    }
    bn = this.refillBankNumber;

    if (this.wrPtr[bn] > this.lastSafePtr[bn]) {
        if (this.freePtr[bn] != this.firstPtr[bn]) {
            _set(this.wrPtr[bn]-4, 0);
            this.wrPtr[bn] = this.firstPtr[bn] + 4;
            _set(this.wrPtr[bn]-4, 1);
            if (this.freePtr[bn] - this.wrPtr[bn] >=  1530 ) {
                this.nextBuffer = this.wrPtr[bn];
            }
        }
    } else {
        if (this.wrPtr[bn] > this.freePtr[bn] ||
            this.freePtr[bn] - this.wrPtr[bn] >=  1530 ) {
            this.nextBuffer = this.wrPtr[bn];
        }
    }
}
# 244 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
#pragma unsafe arrays
void _mii_free_in_buffer(struct miiData &this, int base) {
    int bankNumber = base < this.firstPtr[1] ? 0 : 1;
    int modifiedFreePtr = 0;
    base -= 4;
    _set(base-4, -_get(base-4));
    while (1) {
        int l = _get(this.freePtr[bankNumber]);
        if (l > 0) {
            break;
        }
        modifiedFreePtr = 1;
        if (l == 0) {
            this.freePtr[bankNumber] = this.firstPtr[bankNumber];
        } else {
            this.freePtr[bankNumber] += (((-l) + 3) & ~3) + 4;
        }
    }

}

static int _globalOffset;
int _globalNow;

void _miiTimeStampInit(unsigned offset) {
    int testOffset = 10000;
    _globalOffset = (offset + testOffset) & 0x3FFFF;
}
# 273 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
#pragma unsafe arrays
void _miiClientUser(struct miiData &this, int base, int end, chanend notificationChannel) {
    int length = _packetGood(this, base, end);
    if (length != 0) {
        _miiCommitBuffer(this, base, length, notificationChannel);
    } else {
        _miiRejectBuffer(this, base);
    }
}
# 283 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
#pragma unsafe arrays
int _mii_out_packet(chanend c_out, int b[], int index, int length) {
    int a, roundedLength;
    int oddBytes = length & 3;
    int precise;

    asm(" mov %0, %1" : "=r"(a) : "r"(b));

    roundedLength = length >> 2;
    b[roundedLength+1] = _tailValues[oddBytes];
    b[roundedLength] &= (1 << (oddBytes << 3)) - 1;
    b[roundedLength+2] = -roundedLength + 1;
    __builtin_out_uint(c_out, a + length - oddBytes - 4) ;

    precise =  __builtin_in_uint(c_out) ;


    return precise + 64;
}




int _mii_out_packet_(chanend c_out, int a, int length) {
    int roundedLength;
    int oddBytes = length & 3;
    int precise;
    int x;

    roundedLength = length >> 2;
    asm("stw %0,%1[%2]"::"r"(_tailValues[oddBytes]),"r"(a),"r"(roundedLength+1)) ;
    asm("ldw %0,%1[%2]"::"r"(x),"r"(a),"r"(roundedLength)) ;
    asm("stw %0,%1[%2]"::"r"(x & (1 << (oddBytes << 3)) - 1),"r"(a),"r"(roundedLength)) ;
    asm("stw %0,%1[%2]"::"r"(-roundedLength + 1),"r"(a),"r"(roundedLength+2)) ;
    __builtin_out_uint(c_out, a + length - oddBytes - 4) ;

    precise =  __builtin_in_uint(c_out) ;


    return precise + 64;
}

void _mii_out_packet_done(chanend c_out) {
	__builtin_chkct(c_out, 1) ;
}

void _mii_out_init(chanend c_out) {
    __builtin_chkct(c_out, 1) ;
}

static void _drain(chanend c) {
    __builtin_outct(c, 1) ;
    while(! __builtin_testct(c) ) {
        __builtin_in_uchar(c) ;
    }
    __builtin_chkct(c, 1) ;
}

void _mii_close(chanend cNotifications, chanend cIn, chanend cOut) {
    asm("clrsr 2");
    _drain(cNotifications);
	__builtin_outct(cOut, 1) ;
    __builtin_chkct(cOut, 1) ;
    _drain(cIn);
}
