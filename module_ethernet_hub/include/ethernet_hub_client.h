#pragma once

/**
 *  Client function that passes a frame to Ethernet hub on the desired port.
 *  Frame includes dest/src MAC address(s), type and payload.
 *
 *  \param c        Chanend to connect to the HUB server for TX.
 *                  Select the channel that links to the port you want to use.
 *  \param buffer   Byte array containing the ethernet frame. This must be word aligned
 *  \param nbytes   Number of bytes in buffer
 *
 **/
void passFrameToHub(chanend c, const unsigned char buffer[], int nbytes);



#pragma select handler

/**
 *  Client function that receives a frame from Ethernet hub on a desired port.
 *
 *  This function is selectable i.e. it can be used as a case in a select e.g.
 *
 *  \verbatim
 *      select {
 *         ...
 *         case fetchFramFromHub(...):
 *            break;
 *          ...
 *        }
 *  \endverbatim
 *
 *  \param c        Chanend to connect to the HUB server for RX.
 *                  Select the channel that links to the port you want to receive from.
 *  \param buffer   The buffer to fill with the incoming packet
 *  \param nbytes   Number of bytes in buffer
 *
 **/
void fetchFrameFromHub(chanend c, unsigned buffer[], int &nbytes);

