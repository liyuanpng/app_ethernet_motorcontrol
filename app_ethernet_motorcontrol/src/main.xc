#include <COM_ETHERNET-rev-a.inc>
#include <CORE_C22-rev-a.inc>
#include <IFM_DC100-rev-b.inc>

/**
 * @file main.xc
 * @brief Demo that illustrates the usage of the Dual Ethernet MAC and hub. All incoming packages on port 1 are forwarded over the port 2 and
 * vice versa. Those packets that pass the filter (ARP and broadcast packets) are forwarded to upper layers.
 * @author Synapticon GmbH <support@synapticon.com>
 */

#include <ethernet_config.h>
#include <ethernet_dual_server.h>
#include <ethernet_hub_server.h>
#include <mac_addr.h>
#include <print.h>

#include <hall_server.h>
#include <qei_server.h>
#include <pwm_service_inv.h>
#include <commutation_server.h>
#include <refclk.h>
#include <velocity_ctrl_client.h>
#include <velocity_ctrl_server.h>
#include <xscope_wrapper.h>
#include <profile.h>
#include <drive_modes.h>
#include <statemachine.h>
#include <profile_control.h>
#include <qei_client.h>
#include <internal_config.h>
#include <torque_ctrl_server.h>
//Configure your motor parameters in config/bldc_motor_config.h
#include <bldc_motor_config.h>
#include <velocity_ctrl_client.h>

#include "protocol.h"

#define ON  0
#define OFF 1

on stdcore[IFM_TILE]: clock clk_adc = XS1_CLKBLK_1;
on stdcore[IFM_TILE]: clock clk_pwm = XS1_CLKBLK_REF;

smi_interface_t smi_p1 = ETHERNET_DEFAULT_SMI_INIT_P1;  // Serial Management Interface on port 1
smi_interface_t smi_p2 = ETHERNET_DEFAULT_SMI_INIT_P2;  // Serial Management Interface on port 2

mii_interface_t mii_p1 = ETHERNET_DEFAULT_MII_INIT_P1;  // Media Independent Interface on port 1
mii_interface_t mii_p2 = ETHERNET_DEFAULT_MII_INIT_P2;  // Media Independent Interface on port 2

ethernet_reset_interface_t eth_rst_p1 = ETHERNET_DEFAULT_RESET_INTERFACE_INIT_P1;   // Interface to PHY reset for port 1
ethernet_reset_interface_t eth_rst_p2 = ETHERNET_DEFAULT_RESET_INTERFACE_INIT_P2;   // Interface to PHY reset for port 2


/**
 *  @brief Received the protocol data and implements the led behavioirs.
 *  @param led    Interface server for the LED communication.
 */
void protocol_server(server interface if_motor motor, chanend c_velocity_ctrl)
{
    static int cmd = 0, num = 0, old_num = 0;
    static int speed = 0, torque = 0;

    while(1)
    {
        select
        {
            case motor.msg(char motor_cmd, char motor_num, int motor_speed, int motor_torque) -> int reply:
                if (motor_num >= 0 && motor_num < 3 && motor_cmd >= 0xAA && motor_cmd <= 0xcc)
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
                        set_velocity(speed, c_velocity_ctrl);
                        break;

                    case 0xb:
                        set_velocity(-speed, c_velocity_ctrl);
                        break;

                    default:
                        break;
                }
                break;
        }
    }
}


int main()
{
    // Motor control channels
    chan c_qei_p1, c_qei_p2, c_qei_p3, c_qei_p4, c_qei_p5, c_hall_p6, c_qei_p6;     // qei channels
    chan c_hall_p1, c_hall_p2, c_hall_p3, c_hall_p4, c_hall_p5;             // hall channels
    chan c_commutation_p1, c_commutation_p2, c_commutation_p3, c_signal;    // commutation channels
    chan c_pwm_ctrl, c_adctrig;                                             // pwm channels
    chan c_velocity_ctrl;                                                   // velocity control channel
    chan c_torque_ctrl; // torque control channel
    chan c_watchdog; // watchdog channel

    // Ethernet channels
    chan rxP1, txP1, rxP2, txP2;                      // Communicate HUB to MAC
    chan dataFromP1, dataToP1, dataFromP2, dataToP2;  // Communicate HUB tu upper layers
    interface if_motor motor;
    interface if_addr addr;

  par
    {

      /************************************************************
       * COM TILE - MAC LAYER
       ************************************************************/
      on tile[COM_TILE]:
      {
        printstr("MAC on P1: "); showMAC(MAC_ADDRESS_P1);
        printstr("MAC on P2: "); showMAC(MAC_ADDRESS_P2);

        // Sequential Initialization stage for both ports
        // Ethernet PHY transceiver reset
        eth_phy_reset(eth_rst_p1); // Port 1
        eth_phy_reset(eth_rst_p2); // Port 2

        // Initialize SMI for communication. These functions belong to module_ethernet_smi.
        smi_init(smi_p1); // Port 1
        smi_init(smi_p2); // Port 2

        // Set config over SMI. These functions belong to module_ethernet_smi.
        eth_phy_config(1, smi_p1); // Port 1
        eth_phy_config(1, smi_p2); // Port 2

        // Parallel Ethernet server loops
        par
        {
            // Port 1
            ethernet_server_p1(mii_p1, smi_p1, MAC_ADDRESS_P1, rxP1, txP1);
            // Port 2
            ethernet_server_p2(mii_p2, smi_p2, MAC_ADDRESS_P2, rxP2, txP2);
        }
      }

        /************************************************************
         * CLIENT TILE - ETHERNET HUB LAYER
         ************************************************************/
        // Ethernet hub server
        on tile[1] :
        {
            par
            {
                ethernetHUB(dataFromP1, dataToP1,
                    dataFromP2, dataToP2,
                    txP1, rxP1,
                    txP2, rxP2);

                protocol_server(motor, c_velocity_ctrl);

                send(dataToP1, dataToP2, addr);
            }
        }


        /************************************************************
         * CLIENT TILE - UPPER LAYERS
         ************************************************************/
        on tile[2]:
        {
            /* Velocity Control Loop */
            {
                ctrl_par velocity_ctrl_params;
                filter_par sensor_filter_params;
                hall_par hall_params;
                qei_par qei_params;

                /* Initialize PID parameters for Velocity Control (defined in config/motor/bldc_motor_config.h) */
                init_velocity_control_param(velocity_ctrl_params);

                /* Initialize Sensor configuration parameters (defined in config/motor/bldc_motor_config.h) */
                init_hall_param(hall_params);
                init_qei_param(qei_params);

                /* Initialize sensor filter length */
                init_sensor_filter_param(sensor_filter_params);

                /* Control Loop */
                velocity_control(velocity_ctrl_params, sensor_filter_params, hall_params, \
                     qei_params, SENSOR_USED, c_hall_p2, c_qei_p2, c_velocity_ctrl, c_commutation_p2);
            }

            /* Torque Control Loop */
            {
                ctrl_par torque_ctrl_params;
                hall_par hall_params;
                qei_par qei_params;

                init_qei_param(qei_params);
                init_hall_param(hall_params);
                init_torque_control_param(torque_ctrl_params);

                torque_control( torque_ctrl_params, hall_params, qei_params,\
                                SENSOR_USED, c_adc, c_commutation_p1, c_hall_p2,c_qei_p2,\
                                c_torque_ctrl);
            }

            //  Ethernet hub client
            {
                protocol(dataFromP1, dataFromP2, led, addr);
            }

        }


        on tile[IFM_TILE]:
        {
            par
            {
                /* PWM Loop */
                do_pwm_inv_triggered(c_pwm_ctrl, c_adctrig, p_ifm_dummy_port,\
                        p_ifm_motor_hi, p_ifm_motor_lo, clk_pwm);

                /* Motor Commutation loop */
                {
                    hall_par hall_params;
                    qei_par qei_params;
                    commutation_par commutation_params;
                    int init_state;
                    init_hall_param(hall_params);
                    init_qei_param(qei_params);
                    commutation_sinusoidal(c_hall_p1,  c_qei_p1, c_signal, c_watchdog,  \
                            c_commutation_p1, c_commutation_p2, c_commutation_p3, c_pwm_ctrl,\
                            p_ifm_esf_rstn_pwml_pwmh, p_ifm_coastn, p_ifm_ff1, p_ifm_ff2,\
                            hall_params, qei_params, commutation_params);
                }

                /* Watchdog Server */
                run_watchdog(c_watchdog, p_ifm_wd_tick, p_ifm_shared_leds_wden);

                /* Hall Server */

                {
                    hall_par hall_params;
                    run_hall(c_hall_p1, c_hall_p2, c_hall_p3, c_hall_p4, c_hall_p5, c_hall_p6, p_ifm_hall, hall_params); // channel priority 1,2..5
                }


                /* QEI Server */

                {
                    qei_par qei_params;
                    init_qei_param(qei_params);
                    run_qei(c_qei_p1, c_qei_p2, c_qei_p3, c_qei_p4, c_qei_p5, c_qei_p6, p_ifm_encoder, qei_params);          // channel priority 1,2..5
                }

            }
        }
    }

  return 0;
}
