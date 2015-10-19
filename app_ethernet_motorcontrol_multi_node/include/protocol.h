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

interface if_motor
{
    int msg(char motor_cmd, char motor_num, int motor_parameter);
};

interface if_addr
{
    void msg(char address[], int reply);
};

void protocol_server(server interface if_motor motor, chanend c_p_ctrl_n0, chanend c_p_ctrl_n1, chanend c_p_ctrl_n2);
void protocol_fetcher(chanend dataFromP1, chanend dataFromP2, client interface if_motor motor, client interface if_addr addr);
void protocol_send(chanend dataToP1, chanend dataToP2, server interface if_addr addr);

#endif /* PROTOCOL_H_ */
