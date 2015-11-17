import argparse
import socket
import traceback
import os
import sys
from ethernet_master import *
from ethermotor_settings import *
"""
class bcolors:
    DICT_COLORS = {'HEADER' : '\033[95m',
    'OKBLUE' : '\033[94m',
    'OKGREEN' : '\033[92m',
    'WARNING' : '\033[93m',
    'FAIL' : '\033[91m',
    'ENDC' : '\033[0m',
    'BOLD' : '\033[1m',
    'UNDERLINE' : '\033[4m'}

    def printColor(color, string):
        print DICT_COLORS(color) + string + '\033[0m'
"""
class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

class Firmware_Update(Ethernet_Master):
    PACKAGE_SIZE = 256
    OFFSET_DATA = 22
    OFFSET_PAYLOAD = 14

    def __init__(self, interface, filepath=''):
        Ethernet_Master.__init__(self, interface, "0801")
        self.__filepath = filepath
        self.__file_handler = None
        

    def open_file_to_read(self):
        print "Open file..."
        try:
            self.__file_handler = open(self.__filepath, "rb")
        except:
            print bcolors.FAIL + "Error: Opening file" + bcolors.ENDC

    def open_file_to_write(self, file_name):
        print "Open file..."
        try:
            self.__file_handler = open(file_name, "wb");
        except:
            print bcolors.FAIL + "Error: Opening file" + bcolors.ENDC

    def close_file(self):
        print "Close file..."
        try:
            self.__file_handler.close()
        except:
            print bcolors.FAIL + "Error: Closing file" + bcolors.ENDC


    def read_file(self, size):
        try:
            return self.__file_handler.read(size)
        except:
            print bcolors.FAIL + "Error: reading file" + bcolors.ENDC

    def write_file(self, data):
        try:
            return self.__file_handler.write(data)
        except:
            print bcolors.FAIL + "Error: writing file" + bcolors.ENDC


    def get_file_size(self):
        return os.path.getsize(self.__filepath)

    def scan_slaves(self):
        pass

    def progress_bar(self, progress, max_val):
        sys.stdout.write("\r[%-50s] %d%%" % ('='*((progress*50)/max_val), ((progress*100)/max_val)))
        sys.stdout.flush()

    def receive_image(self, node):
        pass

    def calc_checksum(self):
        rest_size = self.get_file_size()
        size = rest_size
        byte_sum = 0

        while rest_size:
            byte_sum += ord(self.read_file(1))
            rest_size -= 1

        return byte_sum / size

    def receive_data(self, node, size):
        rest_size = size
        print "Receive file with %s bytes." % size

        protocol_data = "F101" + "%08X" % size
        print protocol_data
        address = dst_addresses[node-1]
        print address
        page = 0

        f = self.open_file_to_write('receive_file')

        while rest_size:
            payload = protocol_data + "%04X" % page
            page += 1
            self.send(address, payload)

            reply = self.receive()

            if reply:
                #print reply[Firmware_Update.OFFSET_DATA:Firmware_Update.OFFSET_DATA+Firmware_Update.PACKAGE_SIZE]
                self.write_file(reply[Firmware_Update.OFFSET_DATA:Firmware_Update.OFFSET_DATA+Firmware_Update.PACKAGE_SIZE])
                rest_size -= Firmware_Update.PACKAGE_SIZE
            else:
                print bcolors.FAIL + "Error: Receiving data" + bcolors.ENDC
                return
        print "All data received"

    def flash_firmware(self, node):
        print "Flash Firmware..."
        protocol_data = "F105"

        self.send(dst_addresses[node-1], protocol_data)

        reply = self.receive()
        if reply:
            # Convert Byte into Int
            error = int(reply[Firmware_Update.OFFSET_PAYLOAD:Firmware_Update.OFFSET_PAYLOAD+1].encode('hex'), 16)
            if error == 0:
                print bcolors.OKGREEN + "\n\tFlashing successfully finished!\n" + bcolors.ENDC
            else:
                print bcolors.FAIL + "\n\tERROR %s: Flashing Firmware\n" % error + bcolors.ENDC
        else:
            print bcolors.FAIL + "ERROR: No Reply" + bcolors.ENDC


    def send_image(self, node):
        sys.stdout.write("Update Firmware from node ")
        address = dst_addresses[node-1]
        print address
        rest_size = self.get_file_size()
        size = rest_size
        print "Send file with %s bytes.\n" % size

        protocol_data = "F103" + "%08X" % size        

        page = 0

        #checksum = self.calc_checksum()
        #print "Checksum", checksum

        while rest_size:            
            if rest_size > Firmware_Update.PACKAGE_SIZE:
                payload = self.read_file(Firmware_Update.PACKAGE_SIZE)          
                rest_size -= Firmware_Update.PACKAGE_SIZE
            else:
                payload = self.read_file(rest_size)
                rest_size = 0

            payload = protocol_data + "%04X" % page + payload.encode('hex')
            page += 1

            self.send(address, payload)

            reply = self.receive()
            reply = self.byteToHexStr(reply)
            self.progress_bar(page, size/Firmware_Update.PACKAGE_SIZE)

            if (reply):
                if (reply[15*2-1] != '1'):
                    sys.stdout.write(bcolors.FAIL + " Error: Sending image" + bcolors.ENDC)
                    return False

            
        sys.stdout.write("\n\n")

        return True

    def get_firmware_version(self, node):
        sys.stdout.write("Get Firmware Version from node ")
        protocol_data = "F104"
        address = dst_addresses[node-1]
        print address

        self.send(address, protocol_data);

        reply = self.receive()
        if reply:
            sys.stdout.write("\tFirmware version: ")
            print reply[Firmware_Update.OFFSET_PAYLOAD:Firmware_Update.OFFSET_PAYLOAD+5]
        else:
            print bcolors.FAIL + "Error: Getting Firmware Version" + bcolors.ENDC


def main():
    parser = argparse.ArgumentParser(description='Synapticon SOMANET Firmware Update over Ethernet')
    parser.add_argument('interface', help='Network interface')
    parser.add_argument('-u', help='Firmware filepath', dest='filepath')
    parser.add_argument('-n', type=int, help='Node number', dest='node')
    parser.add_argument('-v', action='store_true')
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

    if args.filepath:
        path = args.filepath

        fm = Firmware_Update(ifname, path)
        fm.set_socket()
        fm.set_timeout(500)

        fm.open_file_to_read()

        fm.send_image(args.node)
        fm.flash_firmware(args.node)

        fm.close_file()

        #fm.receive_data(args.node, 65536)

        #fm.close_file()


    if args.v:
        fm = Firmware_Update(ifname)
        fm.set_socket()
        fm.set_timeout(5)
        fm.get_firmware_version(args.node)
    
if __name__ == '__main__':
    main()