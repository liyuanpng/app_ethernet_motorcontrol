
#include <ethernet_dual_client.h>
#include <ethernet_hub_client.h>
#include <print.h>

void receiverP1(chanend rx, chanend toTX, chanend toApp)
{
  unsigned int rxbuffer[1600/4];

  while (1)
    {

      unsigned int src_port;
      unsigned int nbytes, time;

      mac_rx_p1(rx, (rxbuffer, char[]), nbytes, src_port);
      passFrameToHub(toTX, (rxbuffer,char[]), nbytes);
      passFrameToHub(toApp, (rxbuffer,char[]), nbytes);

    }
  set_thread_fast_mode_off();
}

void receiverP2(chanend rx, chanend toTX, chanend toApp)
{
  unsigned int rxbuffer[1600/4];

  while (1)
    {

      unsigned int src_port;
      unsigned int nbytes, time;

      mac_rx_p2(rx, (rxbuffer, char[]), nbytes, src_port);
      passFrameToHub(toTX, (rxbuffer,char[]), nbytes);
      passFrameToHub(toApp, (rxbuffer,char[]), nbytes);

    }
  set_thread_fast_mode_off();
}

void transmitterP1(chanend tx, chanend fromBridge, chanend fromApp)
{
  unsigned  int txbuffer[1600/4];
  int nbytes;

  while (1)
    {
      select{
          case fetchFrameFromHub(fromBridge, txbuffer, nbytes): break;
          case fetchFrameFromHub(fromApp, txbuffer, nbytes): break;
      }
      mac_tx_p1(tx, (txbuffer), nbytes, ETH_BROADCAST);
    }
}

void transmitterP2(chanend tx, chanend fromBridge, chanend fromApp)
{
  unsigned  int txbuffer[1600/4];
  int nbytes;

  while (1)
    {
      select{
        case fetchFrameFromHub(fromBridge, txbuffer, nbytes): break;
        case fetchFrameFromHub(fromApp, txbuffer, nbytes): break;
      }
      mac_tx_p2(tx, (txbuffer), nbytes, ETH_BROADCAST);
    }
}


void ethernetHUB(chanend dataP1ToApp, chanend appDataToP1,
          chanend dataP2ToApp, chanend appDataToP2,
          chanend txMACP1, chanend rxMACP1,
          chanend txMACP2, chanend rxMACP2)
{
  unsigned time;
  chan dataBridge[2];

  { timer tmr; tmr :> time; tmr when timerafter(time + 600000000) :> time; }
  printstr("Ethernet initialised\n");
  printstr("Hub running\n");

  par
    {
      transmitterP1(txMACP1, dataBridge[0], appDataToP1);
      receiverP2(rxMACP2, dataBridge[0], dataP2ToApp);

      transmitterP2(txMACP2, dataBridge[1], appDataToP2);
      receiverP1(rxMACP1, dataBridge[1], dataP1ToApp);
    }
}
