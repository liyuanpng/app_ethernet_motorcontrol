import sys
import re
import traceback
import os

from ethermotor_settings import *
from ethernet_server import *

def convertIntoHexStr(val):
    res = hex(int(val))[2:]
    if len(res) % 2:
        res = "0" + res
    return res

##
#   @brief Main function with the loop.
#        
def main():
             
    error = 0
    
    re_reply = re.compile(r".*" + ethertype + "(?P<reply>\w\w).*")

    server = Ethernet_Server(interface, ethertype)
    server.set_socket()
    server.set_timeout(3)

    server.add_addresses(*dst_addresses)
    server.add_commands({"node": "\d", "cmd": "\d\d", "motor": "\d", "param": "\w{1,4}"})


    while 1:
        cmds, error = server.get_input()

        param = convertIntoHexStr(cmds["param"])
        param = param if len(param) == 4 else "00" + param

        payload = convertIntoHexStr(cmds["cmd"]) + convertIntoHexStr(cmds["motor"]) + param
        
        server.send(cmds["node"], payload)

        rxdata = server.receive()

        reply = re_reply.search(server.byteToHexStr(rxdata))

        if reply:
            reply = reply.group("reply")
            if reply.lower() == "ff":
                print "ACK"
            else:
                print "NACK"
        else:
            print "Nothing found in reply"        

if __name__ == '__main__':
    main()

