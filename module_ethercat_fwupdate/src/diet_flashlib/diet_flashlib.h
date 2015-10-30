/*
 * Copyright (C) XMOS Limited 2009 - 2010
 *
 * The copyrights, all other intellectual and industrial property rights are
 * retained by XMOS and/or its licensors.
 *
 * The code is provided "AS IS" without a warranty of any kind. XMOS and its
 * licensors disclaim all other warranties, express or implied, including any
 * implied warranty of merchantability/satisfactory quality, fitness for a
 * particular purpose, or non-infringement except to the extent that these
 * disclaimers are held to be legally invalid under applicable law.
 *
 * Version: <version>
 */

#ifndef HAVE_DIET_FLASHLIB_H_
#define HAVE_DIET_FLASHLIB_H_

#include "diet_flash.h"

#ifdef __cplusplus
extern "C" {
#endif

/* Backwards compatibility. */
typedef fl_SPIPorts fl_PortHolderStruct;
#define SEC_PROT_NONE PROT_TYPE_NONE
#define SEC_PROT_SR PROT_TYPE_SR
#define SEC_PROT_SECS PROT_TYPE_SECS




/* Device level operations.
*/

/* Clear the whole thing. */
int fl_eraseAll();


/* Protect the device as much as possible. */
int fl_setProtection( int protect );



unsigned int fl_getDataPartitionSize();

/* Program a page at the given address. */
int fl_writePage(unsigned int address, const unsigned char data[]);

/* Read a page at the given address. */
int fl_readPage( unsigned int address, unsigned char data[] );




#ifdef __cplusplus
} //extern "C"
#endif

#endif /* HAVE_DIET_FLASHLIB_H_ */
