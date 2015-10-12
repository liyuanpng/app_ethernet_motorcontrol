import socket
import sys
import fcntl, socket, struct
import re
import traceback
import time
import os

from etherled_settings import *


class Ethernet_Server:
    def __init__(self, interface, ethertype):
        self.__interface = interface
        self.__ethertype = ethertype
        self.__addresses = []
        self.__re_cmd = None
        self.__dCmds = {}
        self.__socket = None
        self.__src_adr = self.__getHwAddr(self.__interface)
        
        
    def init_addresses(**addresses):
        for address in addresses:
            self.__addresses.append(address)
            
    def init_commands(cmds):
        self.__dCmds = cmds
        for key in self.__dCmds:
            cmd += "(?<" + key + ">" + self.__dCmds[key] + ") "   
        cmd = cmd[:-1]
        self.__re_cmd = re.compile(cmd)
        
    ##
    #   @brief Does the input processing
    #   @return     The node number, the led cmd, the led number and the error.
    #
    def get_input():
        re_exit = re.compile(r"\w")
        #re_input = re.compile(r"(?P<node>\d) (?P<cmd>\w) (?P<led>\d)")
        
        sys.stdout.write("send command: ")
        cmd_input = raw_input()
        
        try:
            cmds = re_input.search(cmd_input)
            cmd_list = []
            if cmds:            
                for key in self.__dCmds:
                    cmd_list.append(nodeCmdLed.group(key))
                          
                return cmd_list, 0
            else:
                exit = re_exit.search(cmd_input)
                if exit and exit.group().lower() == "x":
                    os._exit(1)
                else:
                    print "Input Error! 1"
                    return cmd_list, 1
            
        except:
            print "Input Error! 2"
            traceback.print_exc(file=sys.stdout)
            return cmd_list, 1
    
    def send(payload):
        packet = self.__make_packet(payload)
        return self.__socket.send(packet)
    
    def receive():
        return self.__socket.recv(1024)
    
    def set_socket():
        # Create the socket, bind it to the interface and set a 5 second timeout.
        self.__socket = socket.socket(socket.AF_PACKET, socket.SOCK_RAW, socket.htons(int(self.__interface,16))) 
        self.__socket.bind((self.__interface, 0))
        
    def set_timeout(time):
        self.__socket.settimeout(time)
    
    def es_print():
    
    
    def __make_packet(payload):
        return self.__strToHex(self.__src_adr + self.__addresses(int(self.__dCmds["node"])-1) + payload)
    
    ##
    #   @brief Replaces the colon from the MAC addresses and decode the string into hex bytes.
    #   @param[in]  data    Input string.
    #   @return     the decoded string with removed colon
    #
    def __strToHex(data):
        return data.replace(":", "").decode('hex')
    
    ##
    #   @brief Gets the MAC address from the interface. Works only on linux.
    #   @param[in]  ifname  The interface name as string
    #   @return     The MAC address as a readable string.
    #
    def __getHwAddr(ifname):
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        info = fcntl.ioctl(s.fileno(), 0x8927,  struct.pack('256s', ifname[:15]))
        return ':'.join(['%02x' % ord(char) for char in info[18:24]])

        
##
#   @brief Main function with the loop.
#        
def main():
             
    dst_mac = 0
    error = 0
    
    re_reply = re.compile(r".*" + ethertype + "(?P<reply>\w\w).*")

    src_addr = getHwAddr(interface)
    

    
    while 1:
        node, cmd, led, error = get_input()
                   
        if not error:
            # Get mac address of the node
            dst_addr = dst_addresses[int(node)-1]
            print dst_addr
            # Concat the cmd and the led number to the payload
            payload = cmd + cmd + "0" + led
            
            try:
                t0 = time.time()
                rxdata = sendReceive(s, strToHex(dst_addr+src_addr+ethertype+payload))
                t1 = time.time() - t0
                print "Time:", t1, "seconds"
                # Format the rx data as hex string.
                data = "".join("{:02x}".format(ord(c)) for c in rxdata)
                
                reply = re_reply.search(data)
                
                if reply:
                    reply = reply.group("reply")
                    if reply.lower() == "ff":
                        print "ACK"
                    else:
                        print "NACK"
            except socket.timeout:
                print "Timeout!"
            except:
                print "Error!"
                traceback.print_exc(file=sys.stdout)
                

if __name__ == '__main__':
    main()

