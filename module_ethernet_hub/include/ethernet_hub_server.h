#pragma once

/**
 * Ethernet HUB
 *
 *  This function runs in a loop. It connects to your two Ethernet MAC layers
 *  and to your client function. It takes care of all the packet forwarding
 *  between ports.
 *
 *  \param dataP1toApp              Chanend to connect to the client which receives packets from port 1.
 *  \param appDataToP1              Chanend to connect to the client which transmits packets over port 1.
 *  \param dataP2toApp              Chanend to connect to the client which receives packets from port 2.
 *  \param appDataToP2              Chanend to connect to the client which transmits packets over port 2.
 *  \param txMACP1                  Chanend to transmit packets to the Ethernet server on port 1.
 *  \param rxMACP1                  Chanend to receive packets from the Ethernet server on port 1.
 *  \param txMACP2                  Chanend to transmit packets to the Ethernet server on port 2.
 *  \param rxMACP2                  Chanend to receive packets from the Ethernet server on port 2.
 *
 **/
void ethernetHUB(chanend dataP1toApp, chanend appDataToP1,
                chanend dataP2ToApp, chanend appDataToP2,
                chanend txMACP1, chanend rxMACP1,
                chanend txMACP2, chanend rxMACP2);
