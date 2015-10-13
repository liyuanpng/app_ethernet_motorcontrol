import socket
import sys
import fcntl, socket, struct
import re
import traceback
import time
import os

from ethermotor_settings import *


class Ethernet_Server:
    def __init__(self, interface, ethertype):
        self.__interface = interface
        self.__ethertype = ethertype
        self.__addresses = []
        self.__re_cmd = None
        self.__dCmds = {}
        self.__socket = None
        self.__src_adr = self.__getHwAddr(self.__interface)
        
        
    def add_addresses(self, *args):
        for address in args:
            self.__addresses.append(address)
            
    def add_commands(self, cmds):
        self.__dCmds = cmds
        cmd = ""
        for key in self.__dCmds:
            cmd += "(?P<" + key + ">" + self.__dCmds[key] + ") "
        cmd = cmd[:-1]
        print cmd
        self.__re_cmd = re.compile(cmd)

        
    ##
    #   @brief Does the input processing
    #   @return     The node number, the led cmd, the led number and the error.
    #
    def get_input(self):
        re_exit = re.compile(r"\w")
        
        sys.stdout.write("send command: ")
        cmd_input = raw_input()
        cmd_dict = {}

        try:
            cmds = self.__re_cmd.search(cmd_input)
            if cmds:            
                for key in self.__dCmds:
                    cmd_dict[key] = cmds.group(key)
                          
                return cmd_dict, 0
            else:
                exit = re_exit.search(cmd_input)
                if exit and exit.group().lower() == "x":
                    print "Exit..."
                    os._exit(1)
                else:
                    print "Input Error! 1"
                    return cmd_dict, 1
            
        except:
            print "Input Error! 2"
            traceback.print_exc(file=sys.stdout)
            return cmd_dict, 1
    
    def send(self, address, payload):
        packet = self.__make_packet(address, payload)
        try:
            return self.__socket.send(packet)
        except socket.timeout:
            print "Sending reached Timeout!"
    
    def receive(self):
        try:
            return self.__socket.recv(1024)
        except socket.timeout:
            print "Receiving reached Timeout!"
    
    def set_socket(self):
        # Create the socket, bind it to the interface and set a 5 second timeout.
        self.__socket = socket.socket(socket.AF_PACKET, socket.SOCK_RAW, 
                                      socket.htons(int(self.__ethertype,16)))
        self.__socket.bind((self.__interface, 0))
        
    def set_timeout(self, time):
        self.__socket.settimeout(time)
      
    def __make_packet(self, address, payload):
        val = self.__addresses[int(address)-1] + self.__src_adr + self.__ethertype + payload
        return self.__strToHex(val)
    
    ##
    #   @brief Replaces the colon from the MAC addresses and decode the string into hex bytes.
    #   @param[in]  data    Input string.
    #   @return     the decoded string with removed colon
    #
    def __strToHex(self, data):
        return data.replace(":", "").decode('hex')
    
    def byteToHexStr(self, data):
        if data is not None:
            return "".join("{:02x}".format(ord(c)) for c in data)
        else:
            return ""
    ##
    #   @brief Gets the MAC address from the interface. Works only on linux.
    #   @param[in]  ifname  The interface name as string
    #   @return     The MAC address as a readable string.
    #
    def __getHwAddr(self, ifname):
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        info = fcntl.ioctl(s.fileno(), 0x8927,  struct.pack('256s', ifname[:15]))
        return ':'.join(['%02x' % ord(char) for char in info[18:24]])

        
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
    server.add_commands({"node": "\d", "cmd": "\w", "motor": "\d", "speed": "\d{4}", "torque": "\d{4}"})
    #server.add_commands({"node": "\d{1}", "cmd": "\w{2}", "led": "\d{2}"})

    while 1:
        cmds, error = server.get_input()

        payload = "0" + cmds["cmd"] + "0" + cmds["motor"] + cmds["speed"] + cmds["torque"]
        
        print server.send(cmds["node"], payload)

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

