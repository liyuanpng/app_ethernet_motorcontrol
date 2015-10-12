#ifndef HAVE_PLATFORM_H
#define HAVE_PLATFORM_H

#include <xs1.h>

/*
 * Platform description header file.
 * Automatically generated from "/home/hstroetgen/Dokumente/programming/app_ethernet_motorcontrol/module_board-support/targets/SOMANET-C22.xn".
 */

#ifdef __XC__
/* Core array declaration. */
extern tileref tile[4];
#endif

#ifdef __XC__
/* Service prototypes. */
/* none */
#endif

#if defined(__XC__)
#define PORT_SPI_MISO on tile[0]: XS1_PORT_1A
#define PORT_SPI_SS on tile[0]: XS1_PORT_1B
#define PORT_SPI_CLK on tile[0]: XS1_PORT_1C
#define PORT_SPI_MOSI on tile[0]: XS1_PORT_1D
#define LED_BLUE on tile[1]: XS1_PORT_1K
#define LED_GREEN on tile[1]: XS1_PORT_1L
#define LED_RED on tile[1]: XS1_PORT_1M
#else
#define PORT_SPI_MISO XS1_PORT_1A
#define PORT_SPI_SS XS1_PORT_1B
#define PORT_SPI_CLK XS1_PORT_1C
#define PORT_SPI_MOSI XS1_PORT_1D
#define LED_BLUE XS1_PORT_1K
#define LED_GREEN XS1_PORT_1L
#define LED_RED XS1_PORT_1M
#endif


/* Reference frequency definition. */
#define PLATFORM_REFERENCE_HZ 100000000
#define PLATFORM_REFERENCE_KHZ 100000
#define PLATFORM_REFERENCE_MHZ 100

#endif /* HAVE_PLATFORM_H */

