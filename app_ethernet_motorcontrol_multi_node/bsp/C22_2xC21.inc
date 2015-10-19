#pragma once

#include <xs1.h>
#include <platform.h>
#include <flash.h>

/* ##### SOMANET C22 Node #0 - START ##### */
#define NODE_0_COM_TILE 0
#define NODE_0_APP_TILE_1 1
#define NODE_0_APP_TILE_2 2
#define NODE_0_IFM_TILE 3

/* SPI port definitions */ 
on tile[NODE_0_COM_TILE]:
    fl_SPIPorts p_spi_flash_0 = { PORT_SPI_MISO_0,
 								PORT_SPI_SS_0,
 								PORT_SPI_CLK_0,
 								PORT_SPI_MOSI_0,
 								XS1_CLKBLK_2 };
/* RGB LED */
on tile[NODE_0_APP_TILE_1]:
    out port p_core_leds_0[3] = { XS1_PORT_1M,   /* Red */
					            XS1_PORT_1L,   /* Green */
					            XS1_PORT_1K }; /* Blue */

// SOMANET IFM DC-100
#define IFM_RESOLUTION 740

/* A4935 control ports */
on tile[NODE_0_IFM_TILE]: port p_ifm_coastn_0 = XS1_PORT_1G;
on tile[NODE_0_IFM_TILE]: out port p_ifm_esf_rstn_pwml_pwmh_0 = XS1_PORT_4F;
on tile[NODE_0_IFM_TILE]: port p_ifm_ff1_0 = XS1_PORT_1H;
on tile[NODE_0_IFM_TILE]: port p_ifm_ff2_0 = XS1_PORT_1I;

/* ADC */
on tile[NODE_0_IFM_TILE]: in buffered  port:32 p_ifm_adc_misoa_0 = XS1_PORT_1D;
on tile[NODE_0_IFM_TILE]: in buffered  port:32 p_ifm_adc_misob_0 = XS1_PORT_1C;
on tile[NODE_0_IFM_TILE]: buffered out port:32 p_ifm_adc_sclk_conv_mosib_mosia_0 = XS1_PORT_4C;
on tile[NODE_0_IFM_TILE]: in           port p_ifm_dummy_port_0 = XS1_PORT_16A; /* any unused port */

/* BLDC Motor */
on tile[NODE_0_IFM_TILE]: in  port p_ifm_hall_0 = XS1_PORT_4E;
on tile[NODE_0_IFM_TILE]: buffered out port:32 p_ifm_motor_hi_0[3] = { XS1_PORT_1K,   /* Hi A */
                            XS1_PORT_1O,   /* Hi B */
                            XS1_PORT_1M }; /* Hi C */

on tile[NODE_0_IFM_TILE]: buffered out port:32 p_ifm_motor_lo_0[3] = { XS1_PORT_1L,   /* Lo A */
                              XS1_PORT_1P,   /* Lo B */
                              XS1_PORT_1N }; /* Lo C */

on tile[NODE_0_IFM_TILE]: in port p_ifm_encoder_0 = XS1_PORT_4A; /* Encoder */

/* LEDs, Watchdog */
on tile[NODE_0_IFM_TILE]: out port p_ifm_shared_leds_wden_0 = XS1_PORT_4B; /* BlueGreenRed_WDEN */
on tile[NODE_0_IFM_TILE]: out port p_ifm_wd_tick_0 = XS1_PORT_1F; /* WatchdogTick */

/* Expansion Ports */
on tile[NODE_0_IFM_TILE]: port p_ifm_ext_d_0[4] ={ XS1_PORT_1A,
                                      XS1_PORT_1E,
                                      XS1_PORT_1J,
                                      XS1_PORT_1B };
/* ##### SOMANET C22 Node #0 - END ##### */

/* ##### SOMANET C21-DX Node #1 - START ##### */
#define NODE_1_APP_TILE 4
#define NODE_1_IFM_TILE 5

/* SPI port definitions */ 
on tile[NODE_1_APP_TILE]:
    fl_SPIPorts p_spi_flash_1 = { PORT_SPI_MISO_1,
 								PORT_SPI_SS_1,
 								PORT_SPI_CLK_1,
 								PORT_SPI_MOSI_1,
 								XS1_CLKBLK_2 };
/* RGB LED */
on tile[NODE_1_APP_TILE]:
    out port p_core_leds_1[3] = { XS1_PORT_1M,   /* Red */
					            XS1_PORT_1L,   /* Green */
					            XS1_PORT_1K }; /* Blue */

// SOMANET IFM DC-100
#define IFM_RESOLUTION 740

/* A4935 control ports */
on tile[NODE_1_IFM_TILE]: port p_ifm_coastn_1 = XS1_PORT_1G;
on tile[NODE_1_IFM_TILE]: out port p_ifm_esf_rstn_pwml_pwmh_1 = XS1_PORT_4F;
on tile[NODE_1_IFM_TILE]: port p_ifm_ff1_1 = XS1_PORT_1H;
on tile[NODE_1_IFM_TILE]: port p_ifm_ff2_1 = XS1_PORT_1I;

/* ADC */
on tile[NODE_1_IFM_TILE]: in buffered  port:32 p_ifm_adc_misoa_1 = XS1_PORT_1D;
on tile[NODE_1_IFM_TILE]: in buffered  port:32 p_ifm_adc_misob_1 = XS1_PORT_1C;
on tile[NODE_1_IFM_TILE]: buffered out port:32 p_ifm_adc_sclk_conv_mosib_mosia_1 = XS1_PORT_4C;
on tile[NODE_1_IFM_TILE]: in           port p_ifm_dummy_port_1 = XS1_PORT_16A; /* any unused port */

/* BLDC Motor */
on tile[NODE_1_IFM_TILE]: in  port p_ifm_hall_1 = XS1_PORT_4E;
on tile[NODE_1_IFM_TILE]: buffered out port:32 p_ifm_motor_hi_1[3] = { XS1_PORT_1K,   /* Hi A */
                            XS1_PORT_1O,   /* Hi B */
                            XS1_PORT_1M }; /* Hi C */

on tile[NODE_1_IFM_TILE]: buffered out port:32 p_ifm_motor_lo_1[3] = { XS1_PORT_1L,   /* Lo A */
                              XS1_PORT_1P,   /* Lo B */
                              XS1_PORT_1N }; /* Lo C */

on tile[NODE_1_IFM_TILE]: in port p_ifm_encoder_1 = XS1_PORT_4A; /* Encoder */

/* LEDs, Watchdog */
on tile[NODE_1_IFM_TILE]: out port p_ifm_shared_leds_wden_1 = XS1_PORT_4B; /* BlueGreenRed_WDEN */
on tile[NODE_1_IFM_TILE]: out port p_ifm_wd_tick_1 = XS1_PORT_1F; /* WatchdogTick */

/* Expansion Ports */
on tile[NODE_1_IFM_TILE]: port p_ifm_ext_d_1[4] ={ XS1_PORT_1A,
                                      XS1_PORT_1E,
                                      XS1_PORT_1J,
                                      XS1_PORT_1B };
/* ##### SOMANET C21-DX Node #1 - END ##### */

/* ##### SOMANET C21-DX Node #2 - START ##### */
#define NODE_2_APP_TILE 6
#define NODE_2_IFM_TILE 7

/* SPI port definitions */ 
on tile[NODE_2_APP_TILE]:
    fl_SPIPorts p_spi_flash_2 = { PORT_SPI_MISO_2,
 								PORT_SPI_SS_2,
 								PORT_SPI_CLK_2,
 								PORT_SPI_MOSI_2,
 								XS1_CLKBLK_2 };
/* RGB LED */
on tile[NODE_2_APP_TILE]:
    out port p_core_leds_2[3] = { XS1_PORT_1M,   /* Red */
					            XS1_PORT_1L,   /* Green */
					            XS1_PORT_1K }; /* Blue */

// SOMANET IFM DC-100
#define IFM_RESOLUTION 740

/* A4935 control ports */
on tile[NODE_2_IFM_TILE]: port p_ifm_coastn_2 = XS1_PORT_1G;
on tile[NODE_2_IFM_TILE]: out port p_ifm_esf_rstn_pwml_pwmh_2 = XS1_PORT_4F;
on tile[NODE_2_IFM_TILE]: port p_ifm_ff1_2 = XS1_PORT_1H;
on tile[NODE_2_IFM_TILE]: port p_ifm_ff2_2 = XS1_PORT_1I;

/* ADC */
on tile[NODE_2_IFM_TILE]: in buffered  port:32 p_ifm_adc_misoa_2 = XS1_PORT_1D;
on tile[NODE_2_IFM_TILE]: in buffered  port:32 p_ifm_adc_misob_2 = XS1_PORT_1C;
on tile[NODE_2_IFM_TILE]: buffered out port:32 p_ifm_adc_sclk_conv_mosib_mosia_2 = XS1_PORT_4C;
on tile[NODE_2_IFM_TILE]: in           port p_ifm_dummy_port_2 = XS1_PORT_16A; /* any unused port */

/* BLDC Motor */
on tile[NODE_2_IFM_TILE]: in  port p_ifm_hall_2 = XS1_PORT_4E;
on tile[NODE_2_IFM_TILE]: buffered out port:32 p_ifm_motor_hi_2[3] = { XS1_PORT_1K,   /* Hi A */
                            XS1_PORT_1O,   /* Hi B */
                            XS1_PORT_1M }; /* Hi C */

on tile[NODE_2_IFM_TILE]: buffered out port:32 p_ifm_motor_lo_2[3] = { XS1_PORT_1L,   /* Lo A */
                              XS1_PORT_1P,   /* Lo B */
                              XS1_PORT_1N }; /* Lo C */

on tile[NODE_2_IFM_TILE]: in port p_ifm_encoder_2 = XS1_PORT_4A; /* Encoder */

/* LEDs, Watchdog */
on tile[NODE_2_IFM_TILE]: out port p_ifm_shared_leds_wden_2 = XS1_PORT_4B; /* BlueGreenRed_WDEN */
on tile[NODE_2_IFM_TILE]: out port p_ifm_wd_tick_2 = XS1_PORT_1F; /* WatchdogTick */

/* Expansion Ports */
on tile[NODE_2_IFM_TILE]: port p_ifm_ext_d_2[4] ={ XS1_PORT_1A,
                                      XS1_PORT_1E,
                                      XS1_PORT_1J,
                                      XS1_PORT_1B };
/* ##### SOMANET C21-DX Node #2 - END ##### */
