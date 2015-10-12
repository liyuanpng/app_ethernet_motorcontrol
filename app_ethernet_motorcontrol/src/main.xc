#include <COM_ETHERNET-rev-a.inc>
#include <CORE_C22-rev-a.inc>

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

#include "protocol.h"

#define ON  0
#define OFF 1

smi_interface_t smi_p1 = ETHERNET_DEFAULT_SMI_INIT_P1;  // Serial Management Interface on port 1
smi_interface_t smi_p2 = ETHERNET_DEFAULT_SMI_INIT_P2;  // Serial Management Interface on port 2

mii_interface_t mii_p1 = ETHERNET_DEFAULT_MII_INIT_P1;  // Media Independent Interface on port 1
mii_interface_t mii_p2 = ETHERNET_DEFAULT_MII_INIT_P2;  // Media Independent Interface on port 2

ethernet_reset_interface_t eth_rst_p1 = ETHERNET_DEFAULT_RESET_INTERFACE_INIT_P1;   // Interface to PHY reset for port 1
ethernet_reset_interface_t eth_rst_p2 = ETHERNET_DEFAULT_RESET_INTERFACE_INIT_P2;   // Interface to PHY reset for port 2


/**
 *  @brief Received the protocol data and implements the led behavoirs.
 *  @param led    Interface server for the LED communication.
 */
void led_server(server interface if_led led)
{
    static int cmd = 0, num = 0, old_num = 0;

    while(1)
    {
        select
        {
            case led.msg(char led_cmd, char led_num) -> int reply:
                if (led_num >= 0 && led_num < 3 && led_cmd >= 0xAA && led_cmd <= 0xcc)
                {
                    cmd = led_cmd;
                    num = led_num;
                    reply = 0xff;
                }
                else
                    reply = 0;
                break;

            default:
                // Deactivate old LED
                if (num != old_num)
                {
                    // 1 means off!
                    p_core_leds[old_num] <: OFF;
                    old_num = num;
                }

                switch (cmd)
                {
                    case 0xaa:
                        p_core_leds[num] <: ON;
                        delay_seconds(1);
                        p_core_leds[num] <: OFF;
                        delay_seconds(1);
                        break;

                    case 0xbb:
                        p_core_leds[num] <: ON;
                        delay_milliseconds(200);
                        p_core_leds[num] <: OFF;
                        delay_milliseconds(200);
                        break;

                    case 0xcc:
                        p_core_leds[num] <: ON;
                        break;

                    default:
                        p_core_leds[0] <: ON;
                        delay_seconds(1);
                        p_core_leds[0] <: OFF;
                        delay_seconds(1);
                        old_num = 0;
                        break;
                }
                break;
        }
    }
}


int main()
{
  chan rxP1, txP1, rxP2, txP2;                      // Communicate HUB to MAC
  chan dataFromP1, dataToP1, dataFromP2, dataToP2;  // Communicate HUB tu upper layers
  interface if_led led;
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

                led_server(led);
            }
        }


        /************************************************************
         * CLIENT TILE - UPPER LAYERS
         ************************************************************/
        //  Ethernet hub client
        on tile[2]: protocol(dataFromP1, dataFromP2, led, addr);
        on tile[3]: send(dataToP1, dataToP2, addr);
    }

  return 0;
}
