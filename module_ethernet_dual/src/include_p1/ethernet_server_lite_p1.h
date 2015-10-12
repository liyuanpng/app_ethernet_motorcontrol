// Copyright (c) 2011, XMOS Ltd., All rights reserved
// This software is freely distributable under a derivative of the
// University of Illinois/NCSA Open Source License posted in
// LICENSE.txt and at <http://github.xcore.com/>

#pragma once

#include "smi.h"
#include "mii.h"
#include "ethernet_conf_derived.h"

#ifdef __XC__

void ethernet_server_p1_lite(mii_interface_lite_t &mii,
                          smi_interface_t &?smi,
                          const unsigned char mac_address[],
                          chanend rx,
                          chanend tx);


#endif

