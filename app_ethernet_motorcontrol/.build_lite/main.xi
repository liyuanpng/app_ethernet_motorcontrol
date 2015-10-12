# 1 "../src/main.xc"
# 1 "COM_ETHERNET-rev-a.inc" 1
# 8 "COM_ETHERNET-rev-a.inc"
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
# 9 "COM_ETHERNET-rev-a.inc" 2
# 1 "platform.h" 1 3
# 21 "platform.h" 3
# 1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/SOMANET-C22.h" 1
# 4 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/SOMANET-C22.h"
# 1 "xs1.h" 1 3
# 5 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/SOMANET-C22.h" 2
# 13 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/SOMANET-C22.h"
extern tileref tile[4];
# 22 "platform.h" 2 3
# 10 "COM_ETHERNET-rev-a.inc" 2
# 2 "../src/main.xc" 2
# 1 "CORE_C22-rev-a.inc" 1
# 8 "CORE_C22-rev-a.inc"
# 1 "xs1.h" 1 3
# 9 "CORE_C22-rev-a.inc" 2
# 1 "platform.h" 1 3
# 10 "CORE_C22-rev-a.inc" 2
# 1 "flash.h" 1 3
# 18 "flash.h" 3
# 1 "xs1_clock.h" 1 3
# 19 "flash.h" 2 3
# 34 "flash.h" 3
typedef enum {
  PROT_TYPE_NONE=0,
  PROT_TYPE_SR=1,
  PROT_TYPE_SECS=2,
  PROT_TYPE_SR_2X=3,
} fl_ProtectionType;


typedef enum {
  SECTOR_LAYOUT_REGULAR=0,
  SECTOR_LAYOUT_IRREGULAR
} fl_SectorLayout;


typedef struct {

  unsigned flashId;

  unsigned pageSize;

  unsigned numPages;

  unsigned char addrSize;

  unsigned clockDiv;

  unsigned char idCommand;
# 65 "flash.h" 3
  unsigned char idDummyBytes;

  unsigned char idBytes;

  unsigned idValue;

  unsigned char sectorEraseCommand;
# 76 "flash.h" 3
  unsigned sectorEraseSize;

  unsigned char writeEnableCommand;

  unsigned char writeDisableCommand;

  fl_ProtectionType protectionType;
  struct {
    struct {

      unsigned char setProtectedValue;

      unsigned char setUnprotectedValue;
    } statusBits;
    struct {

      unsigned char sectorProtectCommand;

      unsigned char sectorUnprotectCommand;
    } commandValues;
  } protection;

  unsigned int programPageCommand;

  unsigned char readCommand;
# 105 "flash.h" 3
  unsigned char readDummyBytes;

  fl_SectorLayout sectorLayout;
  struct {

    unsigned regularSectorSize;
    struct {

      unsigned char sectorCount;
# 118 "flash.h" 3
      unsigned char sectorSizesLog2[32];
    } irregularSectorSizes;
  } sectorSizes;

  unsigned char readSRCommand;

  unsigned int writeSRCommand;

  unsigned char wipBitMask;
} fl_DeviceSpec;


typedef struct {

  in buffered port:8 spiMISO;
  out port spiSS;
  out port spiCLK;
  out buffered port:8 spiMOSI;
  __clock_t  spiClkblk;
# 144 "flash.h" 3
} fl_SPIPorts;
# 152 "flash.h" 3
int fl_connect(fl_SPIPorts& SPI);
# 169 "flash.h" 3
int fl_connectToDevice(fl_SPIPorts &SPI, const fl_DeviceSpec spec[], unsigned n);
# 182 "flash.h" 3
int fl_getFlashType();
# 189 "flash.h" 3
unsigned fl_getFlashSize();
# 196 "flash.h" 3
unsigned fl_getSpiId(fl_SPIPorts & SPI, unsigned id_command);
# 205 "flash.h" 3
int fl_disconnect();
# 211 "flash.h" 3
int fl_getFlashIdNum();
# 220 "flash.h" 3
int fl_getFlashIdStr( char buf[], int maxlen );





typedef struct {
  unsigned startAddress;
  unsigned size;
  unsigned version;
  int factory;
} fl_BootImageInfo;
# 241 "flash.h" 3
int fl_getFactoryImage(fl_BootImageInfo& bootImageInfo);
# 255 "flash.h" 3
int fl_getNextBootImage(fl_BootImageInfo& bootImageInfo);
# 266 "flash.h" 3
unsigned fl_getImageVersion(fl_BootImageInfo& bootImageInfo);
# 286 "flash.h" 3
int fl_startImageAdd(fl_BootImageInfo &bootImageInfo, unsigned maxsize,
                     unsigned padding);
# 305 "flash.h" 3
int fl_startImageAddAt( unsigned offset, unsigned maxsize);
# 323 "flash.h" 3
int fl_startImageReplace(fl_BootImageInfo &bootImageInfo, unsigned maxsize);
# 333 "flash.h" 3
int fl_writeImagePage(const unsigned char page[]);
# 339 "flash.h" 3
int fl_endWriteImage(void);
# 349 "flash.h" 3
int fl_deleteImage(fl_BootImageInfo &bootImageInfo);
# 359 "flash.h" 3
int fl_startImageRead(fl_BootImageInfo &bootImageInfo);
# 367 "flash.h" 3
int fl_readImagePage(unsigned char page[]);
# 388 "flash.h" 3
unsigned fl_getDataPartitionSize(void);
# 398 "flash.h" 3
int fl_readData(unsigned offset, unsigned size, unsigned char dst[]);
# 407 "flash.h" 3
unsigned fl_getWriteScratchSize(unsigned offset, unsigned size);
# 419 "flash.h" 3
int fl_writeData(unsigned offset, unsigned size, const unsigned char src[],
                 unsigned char buffer[]);
# 428 "flash.h" 3
unsigned fl_getPageSize(void);
# 434 "flash.h" 3
unsigned fl_getNumDataPages(void);
# 443 "flash.h" 3
int fl_writeDataPage(unsigned n, const unsigned char src[]);
# 451 "flash.h" 3
int fl_readDataPage(unsigned n, unsigned char dst[]);
# 459 "flash.h" 3
unsigned fl_getNumDataSectors(void);
# 466 "flash.h" 3
unsigned fl_getDataSectorSize(unsigned n);
# 473 "flash.h" 3
int fl_eraseDataSector(unsigned n);
# 479 "flash.h" 3
int fl_eraseAllDataSectors(void);
# 485 "flash.h" 3
# 1 "SpecEnum.h" 1 3
# 4 "SpecEnum.h" 3
typedef enum
{
  UNKNOWN = 0,
  ALTERA_EPCS1 = 1,
  AMIC_A25L016 = 7,
  AMIC_A25L40P = 23,
  AMIC_A25L40PT = 8,
  AMIC_A25L40PUM = 9,
  AMIC_A25L80P = 10,
  ATMEL_AT25DF021 = 11,
  ATMEL_AT25DF041A = 2,
  ATMEL_AT25F512 = 12,
  ATMEL_AT25FS010 = 5,
  ESMT_F25L004A = 13,
  MACRONIX_MX25L1005C = 24,
  MICRON_M25P40 = 25,
  NUMONYX_M25P10 = 14,
  NUMONYX_M25P16 = 15,
  NUMONYX_M45P10E = 16,
  SPANSION_S25FL204K = 17,
  SST_SST25VF010 = 18,
  SST_SST25VF016 = 19,
  SST_SST25VF040 = 20,
  ST_M25PE10 = 3,
  ST_M25PE20 = 4,
  WINBOND_W25X10 = 21,
  WINBOND_W25X20 = 22,
  WINBOND_W25X40 = 6,
} fl_FlashId;
# 486 "flash.h" 2 3
# 490 "flash.h" 3
# 1 "SpecMacros.h" 1 3
# 491 "flash.h" 2 3
# 11 "CORE_C22-rev-a.inc" 2









on tile[ 0 ]: fl_SPIPorts p_spi_flash = {  on tile[0]: 0x10200 ,
 								on tile[0]: 0x10000 ,
 								on tile[0]: 0x10100 ,
 								on tile[0]: 0x10300 ,
 								0x206  };

on tile[ 1 ]: out port p_core_leds[3] = {  0x10c00 ,
					   0x10b00 ,
					   0x10900  };
# 3 "../src/main.xc" 2
# 11 "../src/main.xc"
# 1 "ethernet_config.h" 1
# 11 "ethernet_config.h"
static const unsigned char IP_P1_NODE_1[4] = {192, 168, 101, 80};
static const unsigned char IP_P2_NODE_1[4] = {192, 168, 101, 81};

static const unsigned char IP_P1_NODE_2[4] = {192, 168, 101, 82};
static const unsigned char IP_P2_NODE_2[4] = {192, 168, 101, 83};

static const unsigned char IP_P1_NODE_3[4] = {192, 168, 101, 84};
static const unsigned char IP_P2_NODE_3[4] = {192, 168, 101, 85};

static const unsigned char IP_P1_NODE_4[4] = {192, 168, 101, 86};
static const unsigned char IP_P2_NODE_4[4] = {192, 168, 101, 87};

static const unsigned char IP_P1_NODE_5[4] = {192, 168, 101, 88};
static const unsigned char IP_P2_NODE_5[4] = {192, 168, 101, 89};

static const unsigned char IP_P1_NODE_6[4] = {192, 168, 101, 90};
static const unsigned char IP_P2_NODE_6[4] = {192, 168, 101, 91};

static const unsigned char IP_P1_NODE_7[4] = {192, 168, 101, 92};
static const unsigned char IP_P2_NODE_7[4] = {192, 168, 101, 93};




static const unsigned char MAC_P1_NODE_1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x80};
static const unsigned char MAC_P2_NODE_1[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x81};

static const unsigned char MAC_P1_NODE_2[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x82};
static const unsigned char MAC_P2_NODE_2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x83};

static const unsigned char MAC_P1_NODE_3[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x84};
static const unsigned char MAC_P2_NODE_3[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x85};

static const unsigned char MAC_P1_NODE_4[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x86};
static const unsigned char MAC_P2_NODE_4[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x87};

static const unsigned char MAC_P1_NODE_5[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x88};
static const unsigned char MAC_P2_NODE_5[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x89};

static const unsigned char MAC_P1_NODE_6[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x90};
static const unsigned char MAC_P2_NODE_6[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x91};

static const unsigned char MAC_P1_NODE_7[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0x92};
static const unsigned char MAC_P2_NODE_7[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0x93};
# 12 "../src/main.xc" 2
# 1 "ethernet_dual_server.h" 1
# 3 "ethernet_dual_server.h"
# 1 "platform.h" 1 3
# 4 "ethernet_dual_server.h" 2
# 1 "ethernet_conf_derived.h" 1
# 3 "ethernet_conf_derived.h"
# 1 "platform.h" 1 3
# 4 "ethernet_conf_derived.h" 2
# 5 "ethernet_dual_server.h" 2
# 1 "mii.h" 1
# 3 "mii.h"
# 1 "xs1.h" 1 3
# 4 "mii.h" 2
# 1 "xccompat.h" 1 3
# 201 "xccompat.h" 3
typedef streaming chanend streaming_chanend_t;

typedef in buffered port:1 in_buffered_port_1_t;
typedef in buffered port:4 in_buffered_port_4_t;
typedef in buffered port:8 in_buffered_port_8_t;
typedef in buffered port:16 in_buffered_port_16_t;
typedef in buffered port:32 in_buffered_port_32_t;

typedef out buffered port:1 out_buffered_port_1_t;
typedef out buffered port:4 out_buffered_port_4_t;
typedef out buffered port:8 out_buffered_port_8_t;
typedef out buffered port:16 out_buffered_port_16_t;
typedef out buffered port:32 out_buffered_port_32_t;
# 5 "mii.h" 2
# 17 "mii.h"
typedef struct mii_interface_full_t {
    __clock_t  clk_mii_rx;
    __clock_t  clk_mii_tx;

    in port p_mii_rxclk;
    in port p_mii_rxer;
    in buffered port:32 p_mii_rxd;
    in port p_mii_rxdv;

    in port p_mii_txclk;
    out port p_mii_txen;
    out buffered port:32 p_mii_txd;
} mii_interface_full_t;

typedef struct mii_interface_lite_t {
    __clock_t  clk_mii_rx;
    __clock_t  clk_mii_tx;

    in port p_mii_rxclk;
    in port p_mii_rxer;
    in buffered port:32 p_mii_rxd;
    in port p_mii_rxdv;

    in port p_mii_txclk;
    out port p_mii_txen;
    out buffered port:32 p_mii_txd;
# 45 "mii.h"
    in port p_mii_timing;

} mii_interface_lite_t;
# 6 "ethernet_dual_server.h" 2
# 1 "smi.h" 1
# 8 "smi.h"
# 1 "xs1.h" 1 3
# 9 "smi.h" 2
# 1 "xccompat.h" 1 3
# 10 "smi.h" 2
# 32 "smi.h"
typedef struct smi_interface_t {
    int phy_address;
# 37 "smi.h"
    port p_smi_mdc;
} smi_interface_t;
# 45 "smi.h"
void smi_init( smi_interface_t &smi );
# 57 "smi.h"
void eth_phy_config(int eth100,  smi_interface_t &smi );
# 66 "smi.h"
void eth_phy_config_noauto(int eth100,  smi_interface_t &smi );
# 74 "smi.h"
void eth_phy_loopback(int enable,  smi_interface_t &smi );
# 82 "smi.h"
int eth_phy_id( smi_interface_t &smi );
# 90 "smi.h"
int smi_check_link_state( smi_interface_t &smi );


int smi_reg( smi_interface_t &smi , unsigned reg, unsigned val, int inning);
# 7 "ethernet_dual_server.h" 2
# 1 "ethernet_server_lite_p1.h" 1
# 14 "ethernet_server_lite_p1.h"
void ethernet_server_p1_lite(mii_interface_lite_t &mii,
                          smi_interface_t &?smi,
                          const unsigned char mac_address[],
                          chanend rx,
                          chanend tx);
# 8 "ethernet_dual_server.h" 2
# 1 "ethernet_server_lite_p2.h" 1
# 14 "ethernet_server_lite_p2.h"
void ethernet_server_p2_lite(mii_interface_lite_t &mii,
                          smi_interface_t &?smi,
                          const unsigned char mac_address[],
                          chanend rx,
                          chanend tx);
# 9 "ethernet_dual_server.h" 2

typedef out port ethernet_reset_interface_t;
# 20 "ethernet_dual_server.h"
void eth_phy_reset(ethernet_reset_interface_t eth_rst);
# 43 "ethernet_dual_server.h"
void ethernet_server_p1( mii_interface_lite_t  &mii,
                     smi_interface_t &?smi,
                     const unsigned char mac_address[],
                     chanend rx,
                     chanend tx);
# 69 "ethernet_dual_server.h"
void ethernet_server_p2( mii_interface_lite_t  &mii,
                     smi_interface_t &?smi,
                     const unsigned char mac_address[],
                     chanend rx,
                     chanend tx);
# 13 "../src/main.xc" 2
# 1 "ethernet_hub_server.h" 1
# 20 "ethernet_hub_server.h"
void ethernetHUB(chanend dataP1toApp, chanend appDataToP1,
                chanend dataP2ToApp, chanend appDataToP2,
                chanend txMACP1, chanend rxMACP1,
                chanend txMACP2, chanend rxMACP2);
# 14 "../src/main.xc" 2
# 1 "mac_addr.h" 1
# 4 "mac_addr.h"
void showMAC(const unsigned char mac[6]);
# 15 "../src/main.xc" 2
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
# 16 "../src/main.xc" 2
# 17 "../src/main.xc"
# 1 "protocol.h" 1
# 15 "protocol.h"
interface if_led
{
    int msg(char led_cmd, char led_num);
};

interface if_addr
{
    void msg(char address[], int reply);
};

void protocol(chanend dataFromP1, chanend dataFromP2, client interface if_led led, client interface if_addr addr);
void send(chanend dataToP1, chanend dataToP2, server interface if_addr addr);
# 18 "../src/main.xc" 2




smi_interface_t smi_p1 =  { 0 , on tile[0]: 0x40300 } ;
smi_interface_t smi_p2 =  { 0 , on tile[0]: 0x40200 } ;

mii_interface_lite_t  mii_p1 =  { on tile[0] : 0x106 , on tile[0] : 0x306 , on tile[0]: 0x10500 , on tile[0]: 0x10c00 , on tile[0]: 0x40400 , on tile[0]: 0x10e00 , on tile[0]: 0x10a00 , on tile[0]: 0x10d00 , on tile[0]: 0x40500 , on tile[0] : 0x80200 } ;
mii_interface_lite_t  mii_p2 =  { on tile[0] : 0x406 , on tile[0] : 0x506 , on tile[0]: 0x10800 , on tile[0]: 0x10600 , on tile[0]: 0x40100 , on tile[0]: 0x10b00 , on tile[0]: 0x10700 , on tile[0]: 0x10900 , on tile[0]: 0x40000 , on tile[0] : 0x80300 } ;

ethernet_reset_interface_t eth_rst_p1 =  on tile[0]: 0x10f00 ; ;
ethernet_reset_interface_t eth_rst_p2 =  on tile[0]: 0x10400 ; ;
# 36 "../src/main.xc"
void led_server(server interface if_led led)
{
    static int cmd = 0, num = 0, old_num = 0;

    while(1)
    {
        select
        {
            case led.msg(char led_cmd, char led_num) -> int reply:
                if (led_num >= 0 && led_num < 3 && led_cmd >= 0xAA && led_cmd <= 0xcc)
                {
                    cmd = led_cmd;
                    num = led_num;
                    reply = 0xff;
                }
                else
                    reply = 0;
                break;

            default:

                if (num != old_num)
                {

                    p_core_leds[old_num] <:  1 ;
                    old_num = num;
                }

                switch (cmd)
                {
                    case 0xaa:
                        p_core_leds[num] <:  0 ;
                        delay_seconds(1);
                        p_core_leds[num] <:  1 ;
                        delay_seconds(1);
                        break;

                    case 0xbb:
                        p_core_leds[num] <:  0 ;
                        delay_milliseconds(200);
                        p_core_leds[num] <:  1 ;
                        delay_milliseconds(200);
                        break;

                    case 0xcc:
                        p_core_leds[num] <:  0 ;
                        break;

                    default:
                        p_core_leds[0] <:  0 ;
                        delay_seconds(1);
                        p_core_leds[0] <:  1 ;
                        delay_seconds(1);
                        old_num = 0;
                        break;
                }
                break;
        }
    }
}


int main()
{
  chan rxP1, txP1, rxP2, txP2;
  chan dataFromP1, dataToP1, dataFromP2, dataToP2;
  interface if_led led;
  interface if_addr addr;

  par
    {
# 111 "../src/main.xc"
      on tile[ 0 ]:
      {
        printstr("MAC on P1: "); showMAC( (MAC_P1_NODE_2 ) );
        printstr("MAC on P2: "); showMAC( (MAC_P2_NODE_2 ) );



        eth_phy_reset(eth_rst_p1);
        eth_phy_reset(eth_rst_p2);


        smi_init(smi_p1);
        smi_init(smi_p2);


        eth_phy_config(1, smi_p1);
        eth_phy_config(1, smi_p2);


        par
        {

            ethernet_server_p1_lite (mii_p1, smi_p1,  (MAC_P1_NODE_2 ) , rxP1, txP1);

            ethernet_server_p2_lite (mii_p2, smi_p2,  (MAC_P2_NODE_2 ) , rxP2, txP2);
        }
      }
# 143 "../src/main.xc"
        on tile[1] :
        {
            par
            {
                ethernetHUB(dataFromP1, dataToP1,
                    dataFromP2, dataToP2,
                    txP1, rxP1,
                    txP2, rxP2);

                led_server(led);
            }
        }
# 161 "../src/main.xc"
        on tile[2]: protocol(dataFromP1, dataFromP2, led, addr);
        on tile[3]: send(dataToP1, dataToP2, addr);
    }

  return 0;
}
