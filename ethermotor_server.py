import socket
import sys
import fcntl, socket, struct
import re
import traceback
import time
import os

from etherled_settings import *

##
#   @brief Replaces the colon from the MAC addresses and decode the string into hex bytes.
#   @param[in]  data    Input string.
#   @return     the decoded string with removed colon
#
def strToHex(data):
    return data.replace(":", "").decode('hex')

##
#   @brief Gets the MAC address from the interface. Works only on linux.
#   @param[in]  ifname  The interface name as string
#   @return     The MAC address as a readable string.
#
def getHwAddr(ifname):
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    info = fcntl.ioctl(s.fileno(), 0x8927,  struct.pack('256s', ifname[:15]))
    return ':'.join(['%02x' % ord(char) for char in info[18:24]])

##
#   @brief Does the input processing
#   @return     The node number, the led cmd, the led number and the error.
#
def get_input():
    re_exit = re.compile(r"\w")
    re_input = re.compile(r"(?P<node>\d) (?P<cmd>\w) (?P<led>\d)")
    
    sys.stdout.write("LED command: ")
    led_input = raw_input()
    
    try:
        nodeCmdLed = re_input.search(led_input)
    
        if nodeCmdLed:
            node = nodeCmdLed.group("node")
            cmd  = nodeCmdLed.group("cmd")
            led  = nodeCmdLed.group("led")           
            
            return node, cmd, led, 0
        else:
            exit = re_exit.search(led_input)
            if exit and exit.group().lower() == "x":
                os._exit(1)
            else:
                print "Input Error! 1"
                return 0, 0, 0, 1
        
    except:
        print "Input Error! 2"
        traceback.print_exc(file=sys.stdout)
        return 0, 0, 0, 1

##
#   @brief Sends and receive the ethernet packet
#   @param[in]  eth_packet  The ethernet packet as a hex string.
#   @return     The received answer of the node.
# 
def sendReceive(s, eth_packet):
    s.send(eth_packet)
    return s.recv(1024)
        
##
#   @brief Main function with the loop.
#        
def main():
             
    dst_mac = 0
    error = 0
    
    re_reply = re.compile(r".*" + ethertype + "(?P<reply>\w\w).*")

    src_addr = getHwAddr(interface)
    
    # Create the socket, bind it to the interface and set a 5 second timeout.
    s = socket.socket(socket.AF_PACKET, socket.SOCK_RAW, socket.htons(int(ethertype,16))) 
    s.bind((interface, 0))
    s.settimeout(5)
    
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

