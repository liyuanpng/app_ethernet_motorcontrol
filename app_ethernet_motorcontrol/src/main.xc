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
#include <xscope_wrapper.h>
#include <profile.h>
#include <drive_modes.h>
#include <statemachine.h>
#include <profile_control.h>
#include <qei_client.h>
#include <internal_config.h>
#include <adc_server_ad7949.h>
#include <adc_client_ad7949.h>

//#include <overlay_flash.h>
#include <position_ctrl_client.h>
#include <position_ctrl_server.h>
//Configure your motor parameters in config/bldc_motor_config.h
#include <bldc_motor_config.h>

#include "protocol.h"
#include "flash_over_ethernet.h"


on stdcore[IFM_TILE]: clock clk_adc = XS1_CLKBLK_1;
on stdcore[IFM_TILE]: clock clk_pwm = XS1_CLKBLK_REF;

smi_interface_t smi_p1 = ETHERNET_DEFAULT_SMI_INIT_P1;  // Serial Management Interface on port 1
smi_interface_t smi_p2 = ETHERNET_DEFAULT_SMI_INIT_P2;  // Serial Management Interface on port 2

mii_interface_t mii_p1 = ETHERNET_DEFAULT_MII_INIT_P1;  // Media Independent Interface on port 1
mii_interface_t mii_p2 = ETHERNET_DEFAULT_MII_INIT_P2;  // Media Independent Interface on port 2

ethernet_reset_interface_t eth_rst_p1 = ETHERNET_DEFAULT_RESET_INTERFACE_INIT_P1;   // Interface to PHY reset for port 1
ethernet_reset_interface_t eth_rst_p2 = ETHERNET_DEFAULT_RESET_INTERFACE_INIT_P2;   // Interface to PHY reset for port 2


/**
 *  @brief Initialized the positioning server.
 *  @param[out] c_position_ctrl     Channel for the position controlling.
 */
void init_positioning(chanend c_position_ctrl)
{
    hall_par hall_params;
    qei_par qei_params;
    init_qei_param(qei_params);
    init_hall_param(hall_params);

    // Initialise Profile Limits for position profile generator and select position sensor
    init_position_profile_limits(MAX_ACCELERATION, MAX_PROFILE_VELOCITY, qei_params, hall_params, \
            SENSOR_USED, MAX_POSITION_LIMIT, MIN_POSITION_LIMIT);

    int init_state = __check_position_init(c_position_ctrl);

    while(init_state == INIT_BUSY)
    {
        set_position_sensor(SENSOR_USED, c_position_ctrl);
        init_state = init_position_control(c_position_ctrl);
    }
}


int main(void)
{
    // Motor control channels
    chan c_adc, c_adc_1;
    chan c_qei_p1, c_qei_p2, c_qei_p3, c_qei_p4, c_qei_p5, c_hall_p6, c_qei_p6;     // qei channels
    chan c_hall_p1, c_hall_p2, c_hall_p3, c_hall_p4, c_hall_p5;             // hall channels
    chan c_commutation_p1, c_commutation_p2, c_commutation_p3, c_signal;    // commutation channels
    chan c_pwm_ctrl, c_adctrig;                                             // pwm channels
    chan c_watchdog;                                        // watchdog channel
    chan c_position_ctrl;

    // Ethernet channels
    chan rxP1, txP1, rxP2, txP2;                      // Communicate HUB to MAC
    chan dataFromP1, dataToP1, dataFromP2, dataToP2;  // Communicate HUB tu upper layers
    interface if_motor motor;
    interface if_tx tx;

    chan foe_comm, c_flash_data;  // Firmware Update channels


    par
    {
        /************************************************************
        * COM TILE - MAC LAYER
        ************************************************************/
        on tile[COM_TILE]:
        {
            //printstr("MAC on P1: "); showMAC(MAC_ADDRESS_P1);
            //printstr("MAC on P2: "); showMAC(MAC_ADDRESS_P2);
            //fl_SPIPorts * movable spi_ports_ptr = &p_spi_flash;

            //overlay_flash_init(move(spi_ports_ptr), 100, 8);

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
                ethernet_server_p1(mii_p1, smi_p1, MAC_INPUT, rxP1, txP1);
                // Port 2
                //ethernet_server_p2(mii_p2, smi_p2, MAC_OUTPUT, rxP2, txP2);

                firmware_update_loop(p_spi_flash, foe_comm, c_flash_data, null); // firmware update over ethernet
            }
        }

        /************************************************************
         * CLIENT TILE - ETHERNET HUB LAYER
         ************************************************************/
        // Ethernet hub server and protocol server
        on tile[1]:
        {
            init_positioning(c_position_ctrl);

            par
            {
                ethernetHUB(dataFromP1, dataToP1,
                    dataFromP2, dataToP2,
                    txP1, rxP1,
                    txP2, rxP2);

                protocol_server(motor, c_position_ctrl);

                protocol_send(dataToP1, dataToP2, tx);

                protocol_fetcher(dataFromP1, dataFromP2, foe_comm, c_flash_data, motor, tx);
            }
        }


        /************************************************************
         * CLIENT TILE - Control Loops
         ************************************************************/
        on tile[2]:
        {
            par
            {
                /* Position Control Loop */
                {
                     ctrl_par position_ctrl_params;
                     hall_par hall_params;
                     qei_par qei_params;

                     // Initialize PID parameters for Position Control (defined in config/motor/bldc_motor_config.h)
                     init_position_control_param(position_ctrl_params);

                     // Initialize Sensor configuration parameters (defined in config/motor/bldc_motor_config.h)
                     init_hall_param(hall_params);
                     init_qei_param(qei_params);

                     // Control Loop
                     position_control(position_ctrl_params, hall_params, qei_params, SENSOR_USED, c_hall_p3,\
                             c_qei_p3, c_position_ctrl, c_commutation_p3);
                }
            }
        }

        on tile[IFM_TILE]:
        {
            par
            {
                /* PWM Loop */
                do_pwm_inv_triggered(c_pwm_ctrl, c_adctrig, p_ifm_dummy_port,\
                        p_ifm_motor_hi, p_ifm_motor_lo, clk_pwm);

                /* ADC Loop */
                adc_ad7949_triggered(c_adc, c_adc_1, c_adctrig, clk_adc,\
                        p_ifm_adc_sclk_conv_mosib_mosia, p_ifm_adc_misoa,\
                        p_ifm_adc_misob);

                /* Motor Commutation loop */
                {
                    hall_par hall_params;
                    qei_par qei_params;
                    commutation_par commutation_params;
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
