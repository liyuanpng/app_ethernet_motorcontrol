/*
 * protocol.xc
 *
 * @brief Implements the communication protocoll.
 *
 *  Created on: Oct 1, 2015
 *      Author: hstroetgen
 */

#include <ethernet_hub_client.h>
#include <mac_filters.h>
#include <print.h>
#include <inttypes.h>
#include <stdio.h>
#include <string.h>
#include <ethernet_config.h>
#include <velocity_ctrl_client.h>
#include <position_ctrl_client.h>
#include <statemachine.h>

#include <hall_server.h>
#include <qei_server.h>
#include <bldc_motor_config_1.h>
#include <bldc_motor_config_2.h>
#include <profile.h>

#include "protocol.h"


/**
 *  @brief Sends the position to the motor.
 *  @param[in, out] c_position_ctrl    Interface with the motor commands.
 *  @param[in]  cmd     Command for the motor (Obsolet).
 *  @param[in]  param   Motor parameter. In this case the position.
 *  @return     Current position of the motor.
 */
int protocol_set_position(chanend c_position_ctrl, char cmd, int param)
{
    int ret = 0;

    switch (cmd)
    {
        case 0:
        case 0xb:
            set_position(param, c_position_ctrl);
            ret = get_position(c_position_ctrl);
            //printintln(ret);
            break;
        default:
            break;
    }

    return ret;
}

/**
 *  @brief Received the protocol data and does the motor controlling
 *  @param[in, out] motor    Interface with the motor commands.
 *  @param[out]      c_p_ctrl_n0     Channel for velocity controlling motor/node 0.
 *  @param[out]      c_p_ctrl_n1     Channel for velocity controlling motor/node 1.
 *  @param[out]      c_p_ctrl_n2     Channel for velocity controlling motor/node 2.
 */
void protocol_server(server interface if_motor motor, chanend c_p_ctrl_n0, chanend c_p_ctrl_n1, chanend c_p_ctrl_n2)
{
    timer tt;
    unsigned ti;

    tt :> ti;
    tt when timerafter(ti + 100000000) :> void;

    while(1)
    {
        tt :> ti;
        tt when timerafter(ti + 1000000) :> void;

        select
        {
            // Get the motor commands
            case motor.msg(char motor_cmd, char motor_num, int motor_parameter) -> int reply:
                if (motor_num >= 0 && motor_num < 3 && motor_cmd >= 0xa && motor_cmd <= 0xc)
                {
                    // Send reply
                    switch (motor_num)
                    {
                    case 0:
                        reply = protocol_set_position(c_p_ctrl_n0, motor_cmd, motor_parameter);
                        break;
                    case 1:
                        reply = protocol_set_position(c_p_ctrl_n1, motor_cmd, motor_parameter);
                        break;
                    case 2:
                        reply = protocol_set_position(c_p_ctrl_n2, motor_cmd, motor_parameter);
                        break;
                    }
                }
                else
                {
                    reply = 0;
                }
                break;

            default:

                break;
        }
    }
}


/**
 *  @brief Filters the protocol packages.
 *  @param[in]      data     Buffer with the packet.
 *  @param[in]      nBytes   Byte count.
 *  @param[in,out]  motor    Interface client for motor communication with protocol_server().
 *  @param[out]     addr     Interface client for address communication with protocol_send().
 */
void protocol_filter(char data[], int nBytes, client interface if_motor motor, client interface if_addr addr)
{
    int reply;
    int16_t param = 0;

    if (isForMe(data, MAC_INPUT) && isSNCN(data))
    {
        // Send protocol data to led function.
        if (data[OFFSET_PAYLOAD] != 0x0)
        {
            // To get negative numbers, we need here a 16-bit variable.
            param = (data[OFFSET_PAYLOAD+2] << 8 | data[OFFSET_PAYLOAD+3]);

            // Send data to led server and receive answer.
            reply = motor.msg(data[OFFSET_PAYLOAD], data[OFFSET_PAYLOAD+1], param);
            // Send addresses to send function.
            addr.msg(data, reply);
        }
    }
}

/**
 *  @brief Receives the receive packet and changed it to the transfer packet.
 *  @param[in, out] data    Buffer with the receive packet.
 *  @param[in]      reply   Answer from protocol_server().
 */
void protocol_make_packet(char data[], int reply)
{
    char txbuffer[TX_SIZE];

    memset(txbuffer, 0, TX_SIZE);

    /* Change order of MAC-addresses for reply packet */
    memcpy((txbuffer + SRC_MAC_BYTE), (data + DST_MAC_BYTE), 6);
    memcpy((txbuffer + DST_MAC_BYTE), (data + SRC_MAC_BYTE), 6);

    // Copy ethernet type
    txbuffer[ETHERTYPE_BYTE]    = data[ETHERTYPE_BYTE];
    txbuffer[ETHERTYPE_BYTE +1] = data[ETHERTYPE_BYTE +1];

    txbuffer[OFFSET_PAYLOAD] =   reply >> 24;
    txbuffer[OFFSET_PAYLOAD+1] = reply >> 16;
    txbuffer[OFFSET_PAYLOAD+2] = reply >> 8;
    txbuffer[OFFSET_PAYLOAD+3] = reply;

    memcpy(data, txbuffer, TX_SIZE);
}

/**
 *  @brief Send the response packages to the server.
 *  @param dataToP1     Channel for port 1.
 *  @param dataToP2     Channel for port 2.
 *  @param[in] addr     Interface with the mac-address from protocol_filter().
 */
void protocol_send(chanend dataToP1, chanend dataToP2, server interface if_addr addr)
{
    unsigned int txbuffer[TX_SIZE];

    while (1)
    {
        select
        {
            case addr.msg(char address[], int reply):
                memcpy(txbuffer, address, 14);
                protocol_make_packet((txbuffer, char[]), reply);
                break;
        }

        passFrameToHub(dataToP1, (txbuffer, char[]), TX_SIZE);
        passFrameToHub(dataToP2, (txbuffer, char[]), TX_SIZE);
    }
}

/**
 *  @brief Fetched all packages from the ports.
 *  @param dataFromP1   Channel for port 1.
 *  @param dataFromP2   Channel for port 2.
 *  @param[in,out]  motor    Interface client for motor communication with protocol_server().
 *  @param[out]     addr     Interface client for address communication with protocol_send().
 */
void protocol_fetcher(chanend dataFromP1, chanend dataFromP2, client interface if_motor motor, client interface if_addr addr)
{
    int nbytes;
    unsigned rxbuffer[400];
    static unsigned int test = 0;

    while(1)
    {
       select
       {
           case fetchFrameFromHub(dataFromP1, rxbuffer, nbytes):
                           break;

           case fetchFrameFromHub(dataFromP2, rxbuffer, nbytes):
                           break;
       }

       test++;
       printintln(test);

       protocol_filter((rxbuffer, char[]), nbytes, motor, addr);

    }
}

