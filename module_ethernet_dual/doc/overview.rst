.. _enet_overview_label:

Module Ethernet dual Stack
===============

Ethernet is family of computer networking technologies for local area newtorks (LANs). Within this group, we can find the IEEE 802.3_ standard protocol, which defines the physical layer and the data link layer's media access control (MAC) for wired Ethernet.

This module allows a abstract access for the application or other upper layers to two different and parallel-running Ethernet MAC layers. 

Each MAC Ethernet layer runs over 2 dedicated cores that must allocated at the COM Tile of your SOMANET Core board. The size for each layer is 32.3 KB,
therefore running in parallel the two available MACs they will fill the size of your COM tile completely.

All communication is done by channel communication and client function calls following a Server-Client scheme.



.. _802.3: http://www.ieee802.org/3/
