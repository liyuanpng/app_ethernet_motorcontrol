import argparse
import socket
import traceback
import os
import sys
from ethernet_master import *
from ethermotor_settings import *



class Firmware_Update(Ethernet_Master):
    package_size = 256
    def __init__(self, interface, filepath):
        Ethernet_Master.__init__(self, interface, "0801")
        self.__filepath = filepath
        self.__file_handler = None
        

    def open_file(self):
        print "Open file..."
        try:
            self.__file_handler = open(self.__filepath, "rb")
        except:
            print "Error: Opening file"


    def read(self, size=0):
        try:
            return self.__file_handler.read(size)
        except:
            print "Error: reading file"

    def get_file_size(self):
        return os.path.getsize(self.__filepath)

    def scan_slaves(self):
        pass

    def progress_bar(self, progress, max_val):
        sys.stdout.write("\r[%-50s] %d%%" % ('='*((progress*50)/max_val), ((progress*100)/max_val)))
        sys.stdout.flush()

    def receive_image(self, node):
        pass

    def send_image(self, node):
        rest_size = self.get_file_size()
        size = rest_size
        print "Send file with %s bytes." % size

        protocol_data = "F103" + "%08X" % size
        print protocol_data
        address = dst_addresses[node-1]
        print address
        page = 0

        #self.setup_progbar()

        while rest_size:            
            if rest_size > Firmware_Update.package_size:
                payload = self.read(Firmware_Update.package_size)                
                rest_size -= Firmware_Update.package_size
            else:
                payload = self.read(rest_size)
                rest_size = 0

            payload = protocol_data + "%04X" % page + payload.encode('hex')
            page += 1

            self.send(address, payload)

            reply = self.receive()
            reply = self.byteToHexStr(reply)
            self.progress_bar(page, size/Firmware_Update.package_size)

            if (reply):
                if (reply[15*2-1] != '1'):
                    print "Error"

            
        sys.stdout.write("\n")
        return True
            

def main():
    parser = argparse.ArgumentParser(description='Synapticon SOMANET Firmware Update over Ethernet')
    parser.add_argument('interface', help='Network interface')
    parser.add_argument('filepath', help='Firmware filepath')
    parser.add_argument('-n', type=int, help='Node number', dest='node')
    """
    group = parser.add_mutually_exclusive_group()
    group.add_argument('-s', type=int, help='Specify serial number (IP address?) for the ethernet slave', dest='serial')
    group.add_argument('-seq', type=int, help='Specify slave number 1..n', dest='seq')
    group.add_argument('-all', action='store_true', help='Use all slaves connected to the system', dest='all')
    group.add_argument('-scan', action='store_true', help='Scan the slave/slaves connected and display their serial number', dest='scan')
    group.add_argument('-dx', type=int, help='Specify the slave number and number of dx connected nodes', dest='dx')
    """

    args = parser.parse_args()

    ifname = args.interface
    path = args.filepath

    fm = Firmware_Update(ifname, path)

    fm.set_socket()
    fm.set_timeout(10)

    fm.open_file()

    fm.send_image(args.node)



if __name__ == '__main__':
    main()