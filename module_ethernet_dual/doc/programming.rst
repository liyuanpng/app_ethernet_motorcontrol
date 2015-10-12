.. _enet_programming_label:

Using Module Ethernet dual
=====================

To use this module you will need to add to your workspace the module_board-suppot where all the port definitions for SOMANET hardware are included.

In order to access the functionality of this module you need follow 3 basic steps within your app: 
include a configuration file, run the Ethernet server and make calls from the client functions.

Configuration file
-----------------
First of all, you need to define IP and MAC address for each of your two ports. This definition must be in a file called ethernet_config.h and it must be included in your application. 

You should make sure that the IP address selected are suitable for your Network.

::

	static const unsigned char IP_ADDRESS_P1[4] = {192, 168, 101, 80};
	static const unsigned char IP_ADDRESS_P2[4] = {192, 168, 101, 81};

	static const unsigned char MAC_ADDRESS_P1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0xCA};
	static const unsigned char MAC_ADDRESS_P2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0xFE};


Server Initialization
-----------------

Your Ethernet server function must run on your COM tile. Before running the server you need to define and initialize some parameters. Here you can see how to initialize and triger the server.

::

 #include <COM_ETHERNET-rev-a.inc>	// Board support definitions	
 #include <CORE_C22-rev-a.inc>		// Board support definitions

 #include <ethernet_config.h>		// Configuration header	
 #include <ethernet_dual_server.h>	// Header for Ethernet MAC Dual stack server

 // Serial Management Interface on port 1
 smi_interface_t smi_p1 = ETHERNET_DEFAULT_SMI_INIT_P1; 
 // Serial Management Interface on port 2 
 smi_interface_t smi_p2 = ETHERNET_DEFAULT_SMI_INIT_P2;  

 // Media Independent Interface on port 1
 mii_interface_t mii_p1 = ETHERNET_DEFAULT_MII_INIT_P1; 
 // Media Independent Interface on port 2 
 mii_interface_t mii_p2 = ETHERNET_DEFAULT_MII_INIT_P2;  

 // Port 1 PHY reset interface
 ethernet_reset_interface_t eth_rst_p1 = ETHERNET_DEFAULT_RESET_INTERFACE_INIT_P1; 
 // Port 2 PHY reset interface  
 ethernet_reset_interface_t eth_rst_p2 = ETHERNET_DEFAULT_RESET_INTERFACE_INIT_P2;   

 int main()
 {
  chan rxP1, txP1;    // Server-Client communication channels on port 1
  chan rxP2, txP2;    // Server-Client communication channels on port 2

  par
    {

      on tile[COM_TILE]:
      {
        char mac_address_p1[6] = {0xF0, 0xCA, 0xF0, 0xCA, 0xF0, 0xCA}; 
        char mac_address_p2[6] = {0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0xFE}; 

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

        // Parallel loops for Ethernet servers
        par{
		
            // Port 1
            ethernet_server_p1(mii_p1, smi_p1, mac_address_p1, rxP1, txP1);
            // Port 2	
            ethernet_server_p2(mii_p2, smi_p2, mac_address_p2, rxP2, txP2);	
        }
      }

  return 0;
 }

Frames Rx/Tx
-----------------
To send and receive Ethernet frames over the running stacks you must interface them over channels and call to the RX/TX client functions. The example here illustrate how to send and receive frames over the 2 ports:

::

 #include <ethernet_config.h>		// Configuration header	
 #include <ethernet_dual_client.h>	// Header for Ethernet MAC Dual stack client

 /***********************/ 

 unsigned int rxbuffer[400];	// Rx buffer
 unsigned int txbuffer[400];	// Tx buffer
 int nbytes;

	// Before sending a packet you will probably want 
	// to add some content to it. This step is not defined
	// in this example since it strongly relies on your application 

 mac_tx_p1(txP1, txbuffer, nbytes, ETH_BROADCAST); // Send packet over port 1
 mac_tx_p2(txP2, txbuffer, nbytes, ETH_BROADCAST); // Send packet over port 2 
 mac_rx_p1(rxP1, (rxbuffer, char[]), nbytes, src_port); // Receive packet on port 1
 mac_rx_p2(rxP2, (rxbuffer, char[]), nbytes, src_port); // Receive packet on port 2

