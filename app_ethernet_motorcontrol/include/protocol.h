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
    int msg(char motor_cmd, int motor_parameter);
};

interface if_tx
{
    void msg(char reply[]);
};

void protocol_server(server interface if_motor motor, chanend c_position_ctrl);
int protocol_motor_filter(char data[], int nBytes, client interface if_motor motor, client interface if_tx tx);
void protocol_send(chanend dataToP1, chanend dataToP2, server interface if_tx tx);
void protocol_fetcher(chanend dataFromP1, chanend dataFromP2,
                      chanend foe_comm, chanend c_flash_data,
                      client interface if_motor motor, client interface if_tx tx);

#endif /* PROTOCOL_H_ */
