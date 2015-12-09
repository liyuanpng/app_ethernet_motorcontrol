import argparse
import os
import sys
from ctypes import c_ushort

from ethernet_master import *
from ethermotor_settings import *


#class bcolors:
HEADER = '\033[95m'
OKBLUE = '\033[94m'
OKGREEN = '\033[92m'
WARNING = '\033[93m'
FAIL = '\033[91m'
ENDC = '\033[0m'
BOLD = '\033[1m'
UNDERLINE = '\033[4m'


def tags(tag_name):
    def tags_decorator(func):
        def func_wrapper(text):
            return "{0}{1}{2}".format(tag_name, func(text), ENDC)
        return func_wrapper
    return tags_decorator


@tags(FAIL)
def print_fail(text):
    return text


@tags(OKGREEN)
def print_ok(text):
    return text


@tags(WARNING)
def print_warning(text):
    return text


@tags(BOLD)
def print_bold(text):
    return text


class FirmwareUpdate(EthernetMaster):
    PACKAGE_SIZE = 256
    OFFSET_DATA = 22
    OFFSET_PAYLOAD = 14
    ERR_CRC = 0xFC
    ACK = 0xFF
    NACK = 0x0

    def __init__(self, interface, filepath=''):
        EthernetMaster.__init__(self, interface, "0801")
        self.__filepath = filepath
        self.__file_handler = None

    def open_file_to_read(self):
        #print "Open file..."
        try:
            self.__file_handler = open(self.__filepath, "rb")
        except IOError as e:
            print print_fail("Error: Opening file({0}): {1}".format(e.errno, e.strerror))

    def open_file_to_write(self, file_name):
        #print "Open file..."
        try:
            self.__file_handler = open(file_name, "wb")
        except IOError as e:
            print print_fail("Error: Opening file ({0}): {1}".format(e.errno, e.strerror))

    def close_file(self):
        #print "Close file..."
        try:
            self.__file_handler.close()
        except IOError as e:
            print print_fail("Error: Closing file ({0}): {1}".format(e.errno, e.strerror))

    def read_file(self, size):
        try:
            return self.__file_handler.read(size)
        except IOError as e:
            print print_fail("Error: reading file ({0}): {1}".format(e.errno, e.strerror))

    def write_file(self, data):
        try:
            return self.__file_handler.write(data)
        except IOError as e:
            print print_fail("Error: writing file ({0}): {1}".format(e.errno, e.strerror))

    def get_file_size(self):
        return os.path.getsize(self.__filepath)

    def scan_slaves(self):
        pass

    @staticmethod
    def progress_bar(progress, max_val):
        sys.stdout.write("\r[%-50s] %d%%" % ('='*((progress*50)/max_val), ((progress*100)/max_val)))
        sys.stdout.flush()

    def receive_image(self, node):
        pass

    @staticmethod
    def crc16(data):
        crc = c_ushort(0)

        for byte in data:            
            crc = c_ushort((crc.value >> 8) | (crc.value << 8))
            crc = c_ushort(crc.value ^ ord(byte))
            crc = c_ushort(crc.value ^ (crc.value & 0xff) >> 4)
            crc = c_ushort(crc.value ^ crc.value << 12)
            crc = c_ushort(crc.value ^ (crc.value & 0xff) << 5)
        return crc.value

    def receive_data(self, node, size):
        rest_size = size
        print "Receive file with %s bytes." % size

        protocol_data = "F101" + "%08X" % size
        print protocol_data
        address = dst_addresses[node-1]
        print address
        page = 0

        self.open_file_to_write('receive_file')

        while rest_size:
            payload = protocol_data + "%04X" % page
            page += 1
            self.send(address, payload)

            reply = self.receive()

            if reply:
                self.write_file(reply[FirmwareUpdate.OFFSET_DATA:FirmwareUpdate.OFFSET_DATA + FirmwareUpdate.PACKAGE_SIZE])
                rest_size -= FirmwareUpdate.PACKAGE_SIZE
            else:
                print print_fail("Error: Receiving data")
                return
        print "All data received"

    def flash_firmware(self, node):
        print "Flash Firmware..."
        protocol_data = "F105"

        self.send(dst_addresses[node-1], protocol_data)

        reply = self.receive()
        reply_array = bytearray(reply)

        if reply_array:
            # Convert Byte into Int
            error = reply_array[FirmwareUpdate.OFFSET_PAYLOAD]
            if error == 0:
                print print_ok("\n\tFlashing successfully finished!\n")
            else:
                print print_fail("\n\tERROR %s: Flashing Firmware\n" % error)
        else:
            print print_fail("ERROR: No Reply")

    def send_image(self, node):
        sys.stdout.write("Update Firmware from node ")
        address = dst_addresses[node-1]
        print print_bold(address)
        rest_size = self.get_file_size()
        size = rest_size
        print "Send file with %s bytes.\n" % size

        print "Sending..."

        protocol_data = "F103" + "%08X" % size        

        page = 0

        while rest_size:
            reply = FirmwareUpdate.NACK
            if rest_size > FirmwareUpdate.PACKAGE_SIZE:
                payload = self.read_file(FirmwareUpdate.PACKAGE_SIZE)
                rest_size -= FirmwareUpdate.PACKAGE_SIZE
            else:
                payload = self.read_file(rest_size)
                rest_size = 0

            crc = self.crc16(payload)

            header = protocol_data + "%04X" % page
            payload = header + payload.encode('hex') + "%04X" % crc
            page += 1

            while reply != FirmwareUpdate.ACK:
                self.send(address, payload)

                reply_bytes = self.receive()

                if reply_bytes:
                    reply = bytearray(reply_bytes)[FirmwareUpdate.OFFSET_PAYLOAD]
                    if reply != FirmwareUpdate.ACK and reply != FirmwareUpdate.ERR_CRC:
                        sys.stdout.write(print_fail("\n\tError: Sending image"))
                        return False
                else:
                    print print_fail("\tERROR: No Reply")
                    return False

            self.progress_bar(page, size / FirmwareUpdate.PACKAGE_SIZE)
            
        sys.stdout.write("\n\n")

        return True

    def get_firmware_version(self, node):
        sys.stdout.write("Get Firmware Version from node ")
        protocol_data = "F104"
        address = dst_addresses[node-1]
        print print_bold(address)

        self.send(address, protocol_data)

        reply = self.receive()
        if reply:
            sys.stdout.write("\tFirmware version: ")
            print reply[FirmwareUpdate.OFFSET_PAYLOAD:FirmwareUpdate.OFFSET_PAYLOAD + 5]
        else:
            print print_fail("Error: Getting Firmware Version")


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

        fm = FirmwareUpdate(ifname, path)
        fm.set_socket()
        fm.set_timeout(500)

        fm.open_file_to_read()

        if fm.send_image(args.node):
            fm.flash_firmware(args.node)

        fm.close_file()

        #fm.receive_data(args.node, 65536)

        #fm.close_file()

    if args.v:
        fm = FirmwareUpdate(ifname)
        fm.set_socket()
        fm.set_timeout(5)
        fm.get_firmware_version(args.node)
    
if __name__ == '__main__':
    main()