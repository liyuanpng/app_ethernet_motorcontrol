/*
 * flash_over_ethernet.xc
 *
 *  Created on: 27.10.2015
 *      Author: hstroetgen
 */

#include <mac_filters.h>

void flash_filter(char data[], chanend foe_comm, chanend foe_signal, chanend c_flash_data, chanend c_nodes, int nbytes, client interface addr)
{
    //TODO Implementiere den ganzen Flash-Kram.
    if (isForMe(data, MAC_INPUT) && isSNCN(data))
    {
        // Send protocol data to motor function.
        if (data[OFFSET_PAYLOAD] == 0xF1) // 0xA5 0x4
        {
            // To get negative numbers, we need here a 16-bit variable.
            param = (data[OFFSET_PAYLOAD+1] << 8 | data[OFFSET_PAYLOAD+2]);

            // Send data to motor server and receive answer.
            reply = motor.msg(data[OFFSET_PAYLOAD], param);
            // Send addresses to send function.
            addr.msg(data, reply);
        }
    }

}
