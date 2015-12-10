import sys
import re
import traceback
import os

from ethernet_settings import *
from ethernet_server import *


def convertIntoHexStr(val, byte):
    str_format = '%0' + str(byte*2) + 'X'
    res = ((int(val) + (1 << byte*8)) % (1 << byte*8))
    return str_format % res


##
#   @brief Main function with the loop.
#        
def main():
             
    error = 0
    
    re_reply = re.compile(r".*" + ethertype + "(?P<reply>\w+).*")

    server = Ethernet_Server(interface, ethertype)
    server.set_socket()
    server.set_timeout(3)

    server.add_addresses(*dst_addresses)
    server.add_commands({"node": "\d", "param": "-?\w{1,5}"})

    server.add_static_packet({"node": "7", "cmd": "10", "motor": "0", "param": "1000"}, "v1")
    server.add_static_packet({"node": "7", "cmd": "10", "motor": "0", "param": "-1000"}, "v2")
    server.add_static_packet({"node": "7", "cmd": "11", "motor": "0", "param": "1000"}, "p1")

    while 1:
        cmds, error = server.get_input()

        if not error:
            param = convertIntoHexStr(cmds["param"], 2)
            payload = "0b" + param
            
            print payload
            server.send(cmds["node"], payload)

            rxdata = server.receive()

            #reply = re_reply.search(server.byteToHexStr(rxdata))
            reply = server.byteToHexStr(rxdata)
            if reply:
                print "Position:", int(reply[14*2:14*2+8], 16)
            
            """
            if reply:
                reply = reply.group("reply")
                print reply
                if reply.lower() == "ff":
                    print "ACK"
                else:
                    print "NACK"
            else:
                print "Nothing found in reply"        
                """

if __name__ == '__main__':
    main()

