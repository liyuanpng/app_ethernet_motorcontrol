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

#include "ethernet.h"
#include "flash_over_ethernet.h"

#define BUFFER_SIZE 400
#define HTONL(x)    (( (x & 0xff) << 24) | (((x >> 8) & 0xff) << 16) | (((x >> 16) & 0xff) << 8) | ((x >> 24) & 0xff) )


int ethernet_controlling(chanend c_position_ctrl, char cmd, int param)
{
    int ret = 0;
    switch (cmd)
    {
        case 0xb:

            break;
        default:
            break;
    }

    return ret;
}

/**
 *  @brief Received the protocol data and does the motor controlling
 *  @param[in, out] motor    Interface with the motor commands.
 *  @param[out]      c_velocity_ctrl     Channel for the velocity controlling.
 *  @param[out]      c_position_ctrl     Channel for the position controlling.
 */
void motor_controlling_server(server interface if_motor motor, chanend c_position_ctrl, chanend c_rotary_angle)
{
    int angle, pos;

    while(1)
    {
        //tt :> ti;
        //tt when timerafter(ti + 1000000) :> void;

        select
        {
            // Get the motor commands
            case motor.msg(char motor_cmd, int motor_parameter) -> int reply:
                if (motor_cmd >= 0xa && motor_cmd <= 0xc)
                {
                    // Send reply
                    printintln(motor_parameter);
                    set_position(motor_parameter, c_position_ctrl);
                    pos = get_position(c_position_ctrl);
                    //c_rotary_angle <: 1;
                    //c_rotary_angle :> angle;
                    //reply = angle;
                    printstr("AMS: ");
                    //printint(angle);
                    printstr(" HALL: ");
                    printintln(pos);
                    reply = pos;
                    //
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
 *  @param[in,out]  led      Interface client for LED communication with led_server().
 *  @param[out]     addr     Interface client for address communication with send().
 */
int ethernet_motor_filter(char data[], int nBytes, client interface if_motor motor, client interface if_tx tx)
{
    int reply, tmp;
    int16_t param = 0;

    if (isForMe(data, MAC_INPUT) && isSNCN(data))
    {
        // Send protocol data to motor function.
        if (data[OFFSET_PAYLOAD] != 0x0)
        {
            // To get negative numbers, we need here a 16-bit variable.
            param = (data[OFFSET_PAYLOAD+1] << 8 | data[OFFSET_PAYLOAD+2]);
            //printintln(param);
            // Send data to motor server and receive answer.n
            reply = motor.msg(data[OFFSET_PAYLOAD], param);
            //printintln(reply);
            tmp = HTONL(reply);
            // Send addresses to send function.
            memcpy((data + OFFSET_PAYLOAD), (char *) &tmp, 4);

            /*
            for (int i=0; i < 20; i++)
                printhex(data[i]);
            printcharln(' ');
            */
            tx.msg(data, 20);
        }
        return 1;
    }

    return 0;
}

/**
 *  @brief Receives the receive packet and changed it to the transfer packet.
 *  @param[in, out] data    Buffer with the receive packet.
 *  @param[in]      reply   Answer from led_server().
 */
void ethernet_make_packet(char data[])
{
    char tmp[12];

    memset(tmp, 0, 12);

    /* Change order of MAC-addresses for reply packet */
    memcpy((tmp + SRC_MAC_BYTE), (data + DST_MAC_BYTE), 6);
    memcpy((tmp + DST_MAC_BYTE), (data + SRC_MAC_BYTE), 6);
    memcpy(data, tmp, 12);
}

/**
 *  @brief Send the response packages to the server.
 *  @param dataToP1     Channel for port 1.
 *  @param dataToP2     Channel for port 2.
 *  @param[in] addr     Interface with the mac-address from filter().
 */
void ethernet_send(chanend dataToP1, chanend dataToP2, server interface if_tx tx)
{
    char txbuffer[BUFFER_SIZE];
    int nBytes;

    while (1)
    {
        select
        {
            case tx.msg(char reply[], int nbytes):
                memcpy(txbuffer, reply, nbytes);
                nBytes = nbytes;
                ethernet_make_packet(txbuffer);
                break;
        }
        // Minimal length of a ethernet packet is 64 bytes.
        if (nBytes < 64)
            nBytes = 64;

        passFrameToHub(dataToP1, txbuffer, nBytes);
        //passFrameToHub(dataToP2, txbuffer, BUFFER_SIZE);
    }
}

/**
 *  @brief Fetched all packages from the ports.
 *  @param dataFromP1   Channel for port 1.
 *  @param dataFromP2   Channel for port 2.
 *  @param[in,out]  led      Interface client for LED communication with led_server().
 *  @param[out]     addr     Interface client for address communication with send().
 */
void ethernet_fetcher(chanend dataFromP1, chanend dataFromP2, chanend c_flash_data,
                      client interface if_motor motor, client interface if_tx tx)
{
    int nbytes;
    unsigned rxbuffer[BUFFER_SIZE];

    while(1)
    {
       select
       {
           case fetchFrameFromHub(dataFromP1, rxbuffer, nbytes):
                           break;

           //case fetchFrameFromHub(dataFromP2, rxbuffer, nbytes):
           //                break;
       }

       //ethernet_motor_filter((rxbuffer, char[]), nbytes, motor, tx);
       flash_filter((rxbuffer,char[]), c_flash_data, nbytes, tx);

    }
}

