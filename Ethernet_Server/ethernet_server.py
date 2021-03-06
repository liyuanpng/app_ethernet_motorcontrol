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
        
    ##
    #   @brief Adds the mac addresses.
    #   @param[in] *args    The parameter can be a list of strings or single strings seperated by a comma ("ff:ff:ff:ff:ff:f", "ff:ff:ff:ff:ff:f", ...).
    #                       There is no limit.
    #   
    def add_addresses(self, *args):
        for address in args:
            self.__addresses.append(address)
            
    ##
    #   @brief  Adds the commands for the input interpretation. The commands must be in a dictionary, where the key is the command name
    #           and the value is the command form as regex.
    #           Important: The order of the commands in the dictionary differs from the final order in the regex string.
    #                      The reason is the dictionary is a hash map and uses hashes as index.
    #   @param[in] cmds     Commands in a dictionary.
    #
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
    #   @return     The parameters in a list and an error. (Error is obsolet.)
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
    
    ##
    #   @brief  Put address and payload into a packet and sends it.
    #   @param[in]  address  Destination mac address as a index for the address list.
    #   @param[in]  payload  Data to be transfered.
    #   @return     Amount of transfered bytes.
    #
    def send(self, address, payload):
        packet = self.__make_packet(address, payload)
        try:
            return self.__socket.send(packet)
        except socket.timeout:
            print "Sending reached Timeout!"
    
    ##
    #   @brief Receives reply.
    #   @return     Reply.
    #
    def receive(self):
        try:
            return self.__socket.recv(1024)
        except socket.timeout:
            print "Receiving reached Timeout!"
    
    ##
    #   @brief Creates the socket and bind it to the interface.
    #
    def set_socket(self):
        self.__socket = socket.socket(socket.AF_PACKET, socket.SOCK_RAW, 
                                      socket.htons(int(self.__ethertype,16)))
        self.__socket.bind((self.__interface, 0))
    
    ##
    #   @brief Sets the timeout for the socket.
    #
    def set_timeout(self, time):
        self.__socket.settimeout(time)
     
    ##
    #   @brief Put all data into a ethernet packet and decode it in a byte string.
    #   @param[in]  address  Destination mac address as a index for the address list.
    #   @param[in]  payload  Data to be transfered.
    #   @return     The packet as a byte string.
    # 
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
    
    ##
    #   @brief Decodes a byte string in a readable hex string.
    #   @return     Hex string.
    #
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

        


