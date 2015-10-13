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
#include <statemachine.h>

#include "protocol.h"


/**
 *  @brief Received the protocol data and implements the led behavioirs.
 *  @param led    Interface server for the LED communication.
 */
void protocol_server(server interface if_motor motor, chanend c_velocity_ctrl)
{
    static int cmd = 0, num = 0, old_speed = 0;
    static int speed = 0, torque = 0;
    timer tt;
    unsigned ti;

    int init_state = __check_velocity_init(c_velocity_ctrl);

    while (init_state == INIT_BUSY) {
        init_state = init_velocity_control(c_velocity_ctrl);
    }

    tt :> ti;
    tt when timerafter(ti + 100000000) :> void;

    while(1)
    {
        tt :> ti;
        tt when timerafter(ti + 1000000) :> void;

        select
        {
            case motor.msg(char motor_cmd, char motor_num, int motor_speed, int motor_torque) -> int reply:
                if (motor_num >= 0 && motor_num < 3 && motor_cmd >= 0xa && motor_cmd <= 0xc)
                {
                    cmd = motor_cmd;
                    num = motor_num;
                    speed = motor_speed;
                    torque = motor_torque;
                    reply = 0xff;
                }
                else
                    reply = 0;
                break;

            default:
                switch (cmd)
                {
                    case 0xa:
                        if (speed != old_speed)
                        {
                            set_velocity(speed, c_velocity_ctrl);
                            old_speed = speed;
                            printintln(speed);
                        }
                        break;

                    case 0xb:
                        if (speed != old_speed)
                        {
                            set_velocity(-speed, c_velocity_ctrl);
                            old_speed = speed;
                            printintln(-speed);
                        }
                        break;

                    default:
                        break;
                }
                break;
        }
    }
}


/**
 *  @brief Filters the protocol packages.
 *  @param[in]      data     Buffer with the packet.
 *  @param[in]      nBytes   Byte count.
 *  @param[in,out]  led      Interface client for LED communication with led_server().
 *  @param[out]     addr     Interface client for address communication with send().
 */
void protocol_filter(char data[], int nBytes, client interface if_motor motor, client interface if_addr addr)
{
    int reply;

    if (isForMe(data, MAC_INPUT) && isSNCN(data))
    {
        printstrln("for Me!");
        // Send protocol data to led function.
        if (data[OFFSET_PAYLOAD] != 0x0)
        {
            // Send data to led server and receive answer.
            reply = motor.msg(data[OFFSET_PAYLOAD], data[OFFSET_PAYLOAD+1],
                    (data[OFFSET_PAYLOAD+2] << 8 | data[OFFSET_PAYLOAD+3]), (data[OFFSET_PAYLOAD+4] << 8 | data[OFFSET_PAYLOAD+5]));
            // Send addresses to send function.
            addr.msg(data, reply);
        }
    }
}

/**
 *  @brief Receives the receive packet and changed it to the transfer packet.
 *  @param[in, out] data    Buffer with the receive packet.
 *  @param[in]      reply   Answer from led_server().
 */
void protocol_make_packet(char data[], char reply)
{
    char txbuffer[TX_SIZE];

    memset(txbuffer, 0, TX_SIZE);

    /* Change order of MAC-addresses for reply packet */
    memcpy((txbuffer + SRC_MAC_BYTE), (data + DST_MAC_BYTE), 6);
    memcpy((txbuffer + DST_MAC_BYTE), (data + SRC_MAC_BYTE), 6);

    // Copy ethernet type
    txbuffer[ETHERTYPE_BYTE]    = data[ETHERTYPE_BYTE];
    txbuffer[ETHERTYPE_BYTE +1] = data[ETHERTYPE_BYTE +1];

    txbuffer[OFFSET_PAYLOAD] = reply;

    memcpy(data, txbuffer, TX_SIZE);
}

/**
 *  @brief Send the response packages to the server.
 *  @param dataToP1     Channel for port 1.
 *  @param dataToP2     Channel for port 2.
 *  @param[in] addr     Interface with the mac-address from filter().
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
 *  @param[in,out]  led      Interface client for LED communication with led_server().
 *  @param[out]     addr     Interface client for address communication with send().
 */
void protocol_fetcher(chanend dataFromP1, chanend dataFromP2, client interface if_motor motor, client interface if_addr addr)
{
    int nbytes;
    unsigned rxbuffer[400];

    while(1)
    {
       select
       {
           case fetchFrameFromHub(dataFromP1, rxbuffer, nbytes):
                           break;

           case fetchFrameFromHub(dataFromP2, rxbuffer, nbytes):
                           break;
       }

       protocol_filter((rxbuffer, char[]), nbytes, motor, addr);

    }
}

