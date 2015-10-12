API
=================

The API for the module_ethernet_hub is divided into the Server API and Client API.
Server API can be found in ethernet_hub_server.h, whereas the Client API is located at ethernet_hub_client.h. 
If you are already using module_ethernet_dual in your app, just including these previous headers will give you access the whole functionality this module offers.

Hub Server API
----------------

.. doxygenfunction:: ethernetHUB

Hub Client API
----------------

.. doxygenfunction:: passFrameToHub
.. doxygenfunction:: fetchFrameFromHub
