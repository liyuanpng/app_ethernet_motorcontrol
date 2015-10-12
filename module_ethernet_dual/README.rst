SOMANET Ethernet (dual-port) Component
=====================================

:scope: General Use
:description: This module implements two Ethernet MAC (802.3) layers running on the SOMANET CORE module
:keywords: SOMANET, Ethernet
:boards: SOMANET CORE C22, SOMANET COM Ethernet 

Description
-----------

This module provides two low level ethernet interfaces to SOMANET nodes equipped with the COM-Ethernet board. It provides both MII communication to the PHY and MAC transport layer for two ports. Each interface runs on two logical cores and it is restricted to a single client. 

This dual implementation does not support any advanced features like packet timestamping or priority queuing. If you need any of these advanced features, please refer to the Ethernet software component provided by XMOS for a single port.

This module does not include a TCP/IP layer.


