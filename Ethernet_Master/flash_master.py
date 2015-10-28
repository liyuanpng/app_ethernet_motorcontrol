import argparse
import socket
import traceback
from ethernet_master import *



class Firmware_Update(Ethernet_Master):
    def __init__(self, interface, filepath):
        Ethernet_Master.__init__(self, interface, "0801")
        self.__filepath = filepath
        self.__file_handler = None
        

    def open_file(self):
        self.__file_handler = open(self.__filepath, "rb")
        return not self.__file_handler.closed


    def read(self, size=0):
        return self.__file_handler.read(size)

    def get_file_size(self):
        return self.__file_handler.tell()

    def scan_slaves(self):
        pass

    def send_image(self):
        size = self.get_file_size()

        while size:
            if size > 380:
                payload = self.read(380)
                size -= 380
            else:
                payload = self.read(size)
                size = 0

            self.send(address, payload)
            





def main():

    parser = argparse.ArgumentParser(description='Synapticon SOMANET Firmware Update over Ethernet')
    parser.add_argument('interface', help='Network interface')
    parser.add_argument('filepath', help='Firmware filepath')
    group = parser.add_mutually_exclusive_group()
    group.add_argument('-s', type=int, help='Specify serial number (IP address?) for the ethernet slave', dest='serial')
    group.add_argument('-seq', type=int, help='Specify slave number 1..n', dest='seq')
    group.add_argument('-all', action='store_true', help='Use all slaves connected to the system', dest='all')
    group.add_argument('-scan', action='store_true', help='Scan the slave/slaves connected and display their serial number', dest='scan')
    group.add_argument('-dx', type=int, help='Specify the slave number and number of dx connected nodes', dest='dx')

    args = parser.parse_args()

    ifname = args.interface
    path = args.filepath

    fm = Firmware_Update(ifname, path)

    fm.open_file()

    fm.



if __name__ == '__main__':
    main()