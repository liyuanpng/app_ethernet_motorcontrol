#include <COM_ETHERNET-rev-a.inc>
//#include <CORE_C22-rev-a.inc>
//#include <IFM_DC100-rev-b.inc>
//#include <bps/C22_C21.inc>
#include <bsp/C22_2xC21.inc>

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
#include <position_ctrl_client.h>
#include <position_ctrl_server.h>
//Configure your motor parameters in config/bldc_motor_config.h
#include <bldc_motor_config_1.h>
#include <bldc_motor_config_2.h>
#include <bldc_motor_config_3.h>


#include "protocol.h"

#define ON  0
#define OFF 1

on stdcore[NODE_0_IFM_TILE]: clock clk_adc_0 = XS1_CLKBLK_1;
on stdcore[NODE_0_IFM_TILE]: clock clk_pwm_0 = XS1_CLKBLK_REF;

on stdcore[NODE_1_IFM_TILE]: clock clk_adc_1 = XS1_CLKBLK_1;
on stdcore[NODE_1_IFM_TILE]: clock clk_pwm_1 = XS1_CLKBLK_REF;

on stdcore[NODE_2_IFM_TILE]: clock clk_adc_2 = XS1_CLKBLK_1;
on stdcore[NODE_2_IFM_TILE]: clock clk_pwm_2 = XS1_CLKBLK_REF;

smi_interface_t smi_p1 = ETHERNET_DEFAULT_SMI_INIT_P1;  // Serial Management Interface on port 1
smi_interface_t smi_p2 = ETHERNET_DEFAULT_SMI_INIT_P2;  // Serial Management Interface on port 2

mii_interface_t mii_p1 = ETHERNET_DEFAULT_MII_INIT_P1;  // Media Independent Interface on port 1
mii_interface_t mii_p2 = ETHERNET_DEFAULT_MII_INIT_P2;  // Media Independent Interface on port 2

ethernet_reset_interface_t eth_rst_p1 = ETHERNET_DEFAULT_RESET_INTERFACE_INIT_P1;   // Interface to PHY reset for port 1
ethernet_reset_interface_t eth_rst_p2 = ETHERNET_DEFAULT_RESET_INTERFACE_INIT_P2;   // Interface to PHY reset for port 2



/**
 *  @brief Initialized the positioning server.
 *  @param[in] motor    Motor number
 *  @param[out] c_position_ctrl     Channel for the position controlling.
 */
void init_positioning_motor(int motor, chanend c_position_ctrl)
{
    int sensor_type;
    hall_par hall_params;
    qei_par qei_params;
    init_qei_param(qei_params);
    init_hall_param(hall_params);

    switch (motor)
    {
        case 0:
            // Initialise Profile Limits for position profile generator and select position sensor
            init_position_profile_limits(MAX_ACCELERATION_1, MAX_PROFILE_VELOCITY_1, qei_params, hall_params, \
                    SENSOR_SELECTION_CODE_1, MAX_POSITION_LIMIT_1, MIN_POSITION_LIMIT_1);
            sensor_type = SENSOR_SELECTION_CODE_1;
            break;
        case 1:
            // Initialise Profile Limits for position profile generator and select position sensor
            init_position_profile_limits(MAX_ACCELERATION_2, MAX_PROFILE_VELOCITY_2, qei_params, hall_params, \
                    SENSOR_SELECTION_CODE_2, MAX_POSITION_LIMIT_2, MIN_POSITION_LIMIT_2);
            sensor_type = SENSOR_SELECTION_CODE_2;
            break;
        case 2:
            // Initialise Profile Limits for position profile generator and select position sensor
            init_position_profile_limits(MAX_ACCELERATION_3, MAX_PROFILE_VELOCITY_3, qei_params, hall_params, \
                    SENSOR_SELECTION_CODE_3, MAX_POSITION_LIMIT_3, MIN_POSITION_LIMIT_3);
            sensor_type = SENSOR_SELECTION_CODE_3;
            break;
    }

    int init_state = __check_position_init(c_position_ctrl);

    while(init_state == INIT_BUSY)
    {
        set_position_sensor(sensor_type, c_position_ctrl);
        init_state = init_position_control(c_position_ctrl);
    }
}


int main()
{
    /* ##### Node 0 ##### */
    // Motor control channels
    chan c_adc_n0, c_adc_1_n0;
    chan c_qei_p1_n0, c_qei_p2_n0, c_qei_p3_n0, c_qei_p4_n0, c_qei_p5_n0, c_hall_p6_n0, c_qei_p6_n0;    // qei channels
    chan c_hall_p1_n0, c_hall_p2_n0, c_hall_p3_n0, c_hall_p4_n0, c_hall_p5_n0;                          // hall channels
    chan c_commutation_p1_n0, c_commutation_p2_n0, c_commutation_p3_n0, c_signal_n0;                    // commutation channels
    chan c_pwm_ctrl_n0, c_adctrig_n0;                                                                   // pwm channels
    chan c_watchdog_n0;                                                                                 // watchdog channel
    chan c_position_ctrl_n0;                                                                            // position channel

    /* ##### Node 1 ##### */
    // Motor control channels
    chan c_adc_n1, c_adc_1_n1;
    chan c_qei_p1_n1, c_qei_p2_n1, c_qei_p3_n1, c_qei_p4_n1, c_qei_p5_n1, c_hall_p6_n1, c_qei_p6_n1;    // qei channels
    chan c_hall_p1_n1, c_hall_p2_n1, c_hall_p3_n1, c_hall_p4_n1, c_hall_p5_n1;                          // hall channels
    chan c_commutation_p1_n1, c_commutation_p2_n1, c_commutation_p3_n1, c_signal_n1;                    // commutation channels
    chan c_pwm_ctrl_n1, c_adctrig_n1;                                                                   // pwm channels
    chan c_watchdog_n1;                                                                                 // watchdog channel
    chan c_position_ctrl_n1;                                                                            // position channel

    /* ##### Node 2 ##### */
    // Motor control channels
    chan c_adc_n2, c_adc_1_n2;
    chan c_qei_p1_n2, c_qei_p2_n2, c_qei_p3_n2, c_qei_p4_n2, c_qei_p5_n2, c_hall_p6_n2, c_qei_p6_n2;    // qei channels
    chan c_hall_p1_n2, c_hall_p2_n2, c_hall_p3_n2, c_hall_p4_n2, c_hall_p5_n2;                          // hall channels
    chan c_commutation_p1_n2, c_commutation_p2_n2, c_commutation_p3_n2, c_signal_n2;                    // commutation channels
    chan c_pwm_ctrl_n2, c_adctrig_n2;                                                                   // pwm channels
    chan c_watchdog_n2;                                                                                 // watchdog channel
    chan c_position_ctrl_n2;                                                                            // position channel

    // Ethernet channels
    chan rxP1, txP1, rxP2, txP2;                      // Communicate HUB to MAC
    chan dataFromP1, dataToP1, dataFromP2, dataToP2;  // Communicate HUB tu upper layers
    interface if_motor motor;
    interface if_addr addr;

  par
    {
      /* ######################################### NODE 0 ######################################### */

      /************************************************************
       * COM TILE - MAC LAYER
       ************************************************************/
      on tile[NODE_0_COM_TILE]:
      {

        //printstr("MAC on P1: "); showMAC(MAC_ADDRESS_P1);
        //printstr("MAC on P2: "); showMAC(MAC_ADDRESS_P2);


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
            ethernet_server_p2(mii_p2, smi_p2, MAC_OUTPUT, rxP2, txP2);

        }
      }

        /************************************************************
         * CLIENT TILE - ETHERNET HUB LAYER
         ************************************************************/
        // Ethernet hub server and protocol server
        on tile[NODE_0_APP_TILE_1]:
        {
            init_positioning_motor(0, c_position_ctrl_n0);
            init_positioning_motor(1, c_position_ctrl_n1);
            init_positioning_motor(2, c_position_ctrl_n2);

            par
            {
                ethernetHUB(dataFromP1, dataToP1,
                    dataFromP2, dataToP2,
                    txP1, rxP1,
                    txP2, rxP2);

                protocol_server(motor, c_position_ctrl_n0, c_position_ctrl_n1, c_position_ctrl_n2);

                protocol_send(dataToP1, dataToP2, addr);

                protocol_fetcher(dataFromP1, dataFromP2, motor, addr);
            }
        }


        /************************************************************
         * CLIENT TILE - Control Loops
         ************************************************************/
        on tile[NODE_0_APP_TILE_2]:
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
                 position_control(position_ctrl_params, hall_params, qei_params, SENSOR_SELECTION_CODE_1, c_hall_p3_n0,\
                         c_qei_p3_n0, c_position_ctrl_n0, c_commutation_p3_n0);
            }
        }


        on tile[NODE_0_IFM_TILE]:
        {
            par
            {
                /* PWM Loop */
                do_pwm_inv_triggered(c_pwm_ctrl_n0, c_adctrig_n0, p_ifm_dummy_port_0,\
                        p_ifm_motor_hi_0, p_ifm_motor_lo_0, clk_pwm_0);

                /* ADC Loop */
                adc_ad7949_triggered(c_adc_n0, c_adc_1_n0, c_adctrig_n0, clk_adc_0,\
                        p_ifm_adc_sclk_conv_mosib_mosia_0, p_ifm_adc_misoa_0,\
                        p_ifm_adc_misob_0);

                /* Motor Commutation loop */
                {
                    hall_par hall_params;
                    qei_par qei_params;
                    commutation_par commutation_params;
                    init_hall_param(hall_params);
                    init_qei_param(qei_params);
                    commutation_sinusoidal(c_hall_p1_n0,  c_qei_p1_n0, c_signal_n0, c_watchdog_n0,  \
                            c_commutation_p1_n0, c_commutation_p2_n0, c_commutation_p3_n0, c_pwm_ctrl_n0,\
                            p_ifm_esf_rstn_pwml_pwmh_0, p_ifm_coastn_0, p_ifm_ff1_0, p_ifm_ff2_0,\
                            hall_params, qei_params, commutation_params);
                }

                /* Watchdog Server */
                run_watchdog(c_watchdog_n0, p_ifm_wd_tick_0, p_ifm_shared_leds_wden_0);

                /* Hall Server */
                {
                    hall_par hall_params;
                    run_hall(c_hall_p1_n0, c_hall_p2_n0, c_hall_p3_n0, c_hall_p4_n0, c_hall_p5_n0, c_hall_p6_n0, p_ifm_hall_0, hall_params); // channel priority 1,2..5
                }


                /* QEI Server */
                {
                    qei_par qei_params;
                    init_qei_param(qei_params);
                    run_qei(c_qei_p1_n0, c_qei_p2_n0, c_qei_p3_n0, c_qei_p4_n0, c_qei_p5_n0, c_qei_p6_n0, p_ifm_encoder_0, qei_params);          // channel priority 1,2..5
                }
            }
        }

/* ######################################### NODE 1 ######################################### */

        on tile[NODE_1_APP_TILE]:
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
                 position_control(position_ctrl_params, hall_params, qei_params, SENSOR_SELECTION_CODE_2, c_hall_p3_n1,\
                         c_qei_p3_n1, c_position_ctrl_n1, c_commutation_p3_n1);

            }

        }


        on tile[NODE_1_IFM_TILE]:
        {

            par
            {
                /* PWM Loop */
                do_pwm_inv_triggered(c_pwm_ctrl_n1, c_adctrig_n1, p_ifm_dummy_port_1,\
                        p_ifm_motor_hi_1, p_ifm_motor_lo_1, clk_pwm_1);

                /* ADC Loop */
                adc_ad7949_triggered(c_adc_n1, c_adc_1_n1, c_adctrig_n1, clk_adc_1,\
                        p_ifm_adc_sclk_conv_mosib_mosia_1, p_ifm_adc_misoa_1,\
                        p_ifm_adc_misob_1);

                /* Motor Commutation loop */
                {
                    hall_par hall_params;
                    qei_par qei_params;
                    commutation_par commutation_params;
                    init_hall_param(hall_params);
                    init_qei_param(qei_params);
                    commutation_sinusoidal(c_hall_p1_n1,  c_qei_p1_n1, c_signal_n1, c_watchdog_n1,  \
                            c_commutation_p1_n1, c_commutation_p2_n1, c_commutation_p3_n1, c_pwm_ctrl_n1,\
                            p_ifm_esf_rstn_pwml_pwmh_1, p_ifm_coastn_1, p_ifm_ff1_1, p_ifm_ff2_1,\
                            hall_params, qei_params, commutation_params);
                }

                /* Watchdog Server */
                run_watchdog(c_watchdog_n1, p_ifm_wd_tick_1, p_ifm_shared_leds_wden_1);

                /* Hall Server */
                {
                    hall_par hall_params;
                    run_hall(c_hall_p1_n1, c_hall_p2_n1, c_hall_p3_n1, c_hall_p4_n1, c_hall_p5_n1, c_hall_p6_n1, p_ifm_hall_1, hall_params); // channel priority 1,2..5
                }


                /* QEI Server */
                {
                    qei_par qei_params;
                    init_qei_param(qei_params);
                    run_qei(c_qei_p1_n1, c_qei_p2_n1, c_qei_p3_n1, c_qei_p4_n1, c_qei_p5_n1, c_qei_p6_n1, p_ifm_encoder_1, qei_params);          // channel priority 1,2..5
                }
            }
        }

        /* ######################################### NODE 2 ######################################### */

                on tile[NODE_2_APP_TILE]:
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
                         position_control(position_ctrl_params, hall_params, qei_params, SENSOR_SELECTION_CODE_2, c_hall_p3_n2,\
                                 c_qei_p3_n2, c_position_ctrl_n2, c_commutation_p3_n2);

                    }

                }


                on tile[NODE_2_IFM_TILE]:
                {

                    par
                    {
                        /* PWM Loop */
                        do_pwm_inv_triggered(c_pwm_ctrl_n2, c_adctrig_n2, p_ifm_dummy_port_2,\
                                p_ifm_motor_hi_2, p_ifm_motor_lo_2, clk_pwm_2);

                        /* ADC Loop */
                        adc_ad7949_triggered(c_adc_n2, c_adc_1_n2, c_adctrig_n2, clk_adc_2,\
                                p_ifm_adc_sclk_conv_mosib_mosia_2, p_ifm_adc_misoa_2,\
                                p_ifm_adc_misob_2);

                        /* Motor Commutation loop */
                        {
                            hall_par hall_params;
                            qei_par qei_params;
                            commutation_par commutation_params;
                            init_hall_param(hall_params);
                            init_qei_param(qei_params);
                            commutation_sinusoidal(c_hall_p1_n2,  c_qei_p1_n2, c_signal_n2, c_watchdog_n2,  \
                                    c_commutation_p1_n2, c_commutation_p2_n2, c_commutation_p3_n2, c_pwm_ctrl_n2,\
                                    p_ifm_esf_rstn_pwml_pwmh_2, p_ifm_coastn_2, p_ifm_ff1_2, p_ifm_ff2_2,\
                                    hall_params, qei_params, commutation_params);
                        }

                        /* Watchdog Server */
                        run_watchdog(c_watchdog_n2, p_ifm_wd_tick_2, p_ifm_shared_leds_wden_2);

                        /* Hall Server */
                        {
                            hall_par hall_params;
                            run_hall(c_hall_p1_n2, c_hall_p2_n2, c_hall_p3_n2, c_hall_p4_n2, c_hall_p5_n2, c_hall_p6_n2, p_ifm_hall_2, hall_params); // channel priority 1,2..5
                        }


                        /* QEI Server */
                        {
                            qei_par qei_params;
                            init_qei_param(qei_params);
                            run_qei(c_qei_p1_n2, c_qei_p2_n2, c_qei_p3_n2, c_qei_p4_n2, c_qei_p5_n2, c_qei_p6_n2, p_ifm_encoder_2, qei_params);          // channel priority 1,2..5
                        }
                    }
                }
    }

  return 0;
}
