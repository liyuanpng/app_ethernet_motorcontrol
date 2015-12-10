/*
 * ethernet.h
 *
 *  Created on: Oct 1, 2015
 *      Author: hstroetgen
 */

#ifndef ETHERNET_H_
#define ETHERNET_H_

#include <rotary_sensor.h>

#define TX_SIZE 60
#define OFFSET_PAYLOAD 14

interface if_motor
{
    int msg(char motor_cmd, int motor_parameter);
};

interface if_tx
{
    void msg(char reply[], int nbytes);
};

void motor_controlling_server(server interface if_motor motor, chanend c_position_ctrl, chanend c_rotary_angle);
int ethernet_motor_filter(char data[], int nBytes, client interface if_motor motor, client interface if_tx tx);
void ethernet_send(chanend dataToP1, chanend dataToP2, server interface if_tx tx);
void ethernet_fetcher(chanend dataFromP1, chanend dataFromP2, chanend c_flash_data,
                      client interface if_motor motor, client interface if_tx tx);

#endif /* ethernet_H_ */