.. _enethub_programming_label:

Using Module Ethernet Hub
=====================

Before start using this module you should have your Ethernet Dual Stack successfully running into your app.

To make the Hub run, just trigger the Hub layer which the propper channels connected to your MACs and to your app. 
Then, in order to send and fetch data packets, use the RX/TX client functions.

Server Initialization
-----------------

Add the header file.

::

 #include <ethernet_hub_server.h>	

Declare the channels for the communication between the Hub and upper layers

::

 chan dataFromP1, dataToP1, dataFromP2, dataToP2;  // Communicate Hub to upper layers

Add a new parallel core in your main app where the Hub layer will run.

::

  on tile[1] : ethernetHUB(dataFromP1, dataToP1,  // Ethernet Hub server
                            dataFromP2, dataToP2,
                            txP1, rxP1,
                            txP2, rxP2);

Frames Rx/Tx
-----------------
To send and receive Ethernet frames over the Hub you must interface it over channels and call to the RX/TX client functions. The example here illustrate how to send and receive data frames.

::

 #include <ethernet_hub_client.h>

 /***********************/ 

    int nbytes;
    unsigned buffer[400];	// Rx/Tx buffer

       select{
		// Receives frame that comes from port 1
           case fetchFrameFromHub(dataFromP1, buffer, nbytes):
			   // Sends back the packet on port 1	
			   passFrameToHub(dataToP1, buffer, nbytes); 
                           break;

		// Receives frame that comes from port 2
           case fetchFrameFromHub(dataFromP2, buffer, nbytes):	
			   // Sends back the packet on port 2
			   passFrameToHub(dataToP2, buffer, nbytes);
                           break;
	}

When sending a data packet to the Hub, the user can choose to send it over port 1, port 2, or both. Just provide to passFrameToHub the right channel. If you need to send over the two ports, do not hesitate to call passFrameToHub twice.

