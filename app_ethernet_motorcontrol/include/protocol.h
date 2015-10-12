/*
 * protocol.h
 *
 *  Created on: Oct 1, 2015
 *      Author: hstroetgen
 */

#ifndef PROTOCOL_H_
#define PROTOCOL_H_


#define TX_SIZE 60
#define OFFSET_PAYLOAD 14

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

#endif /* PROTOCOL_H_ */
