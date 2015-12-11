"""
@brief Upgrades the firmware of SOMANET modules over ethernet.

 Created on: Nov 1, 2015
       Author: hstroetgen
"""

import argparse
import os
import sys
from ctypes import c_ushort
import threading

from ethernet_master import *
from ethernet_settings import *


HEADER = '\033[95m'
OKBLUE = '\033[94m'
OKGREEN = '\033[92m'
WARNING = '\033[93m'
FAIL = '\033[91m'
ENDC = '\033[0m'
BOLD = '\033[1m'
UNDERLINE = '\033[4m'


def tags(tag_name):
    """
    @note: Decorate function for the printing.
    @param tag_name: ASCII tag from the list above.
    @return: Returns the manipulated string.
    """
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
    def __init__(self, iface, filepath=''):
        EthernetMaster.__init__(self, iface, ethertype)
        self.__filepath = filepath
        self.__file_handler = None
        self.__found_nodes = []
        self.__thread_progress = 0

    def open_file_to_read(self):
        try:
            self.__file_handler = open(self.__filepath, "rb")
        except IOError as e:
            print print_fail("Error: Opening file({0}): {1}".format(e.errno, e.strerror))

    def open_file_to_write(self, file_name):
        try:
            self.__file_handler = open(file_name, "wb")
        except IOError as e:
            print print_fail("Error: Opening file ({0}): {1}".format(e.errno, e.strerror))

    def close_file(self):
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
        """
        @note: Iterates through the mac address list and asks for the firmware version. The result will be stored.
        """
        print "\nScanning devices..."
        nodes = len(dst_addresses)
        for node in range(nodes):
            self.__progress_bar(node, nodes)
            protocol_data = "%02X%02X" % (CMD_PRE, CMD_VERSION)
            address = dst_addresses[node]

            self.send(address, protocol_data)
            reply = self.receive(error_msg=False)

            if reply:
                self.__found_nodes.append(address)

        self.__progress_bar(nodes, nodes)
        found = len(self.__found_nodes)
        print "\n...done"
        print "Found %d node%s:" % (found, 's' if found > 1 else '')
        print self.__found_nodes

    @staticmethod
    def __progress_bar(progress, max_val):
        """
        @note: Calculates and shows a progress bar.
        @param progress: The actual progress
        @param max_val: The maximum
        """
        sys.stdout.write("\r[%-50s] %d%%" % ('=' * ((progress * 50) / max_val), ((progress * 100) / max_val)))
        sys.stdout.flush()

    @staticmethod
    def __crc16(data):
        """
        @note: Calculates the CRC16 checksum for an data array.
        @param data: Data array.
        @return: The crc value.
        """
        crc = c_ushort(0)

        for byte in data:            
            crc = c_ushort((crc.value >> 8) | (crc.value << 8))
            crc = c_ushort(crc.value ^ ord(byte))
            crc = c_ushort(crc.value ^ (crc.value & 0xff) >> 4)
            crc = c_ushort(crc.value ^ crc.value << 12)
            crc = c_ushort(crc.value ^ (crc.value & 0xff) << 5)
        return crc.value

    def __read_image(self):
        image_page_array = []
        self.open_file_to_read()
        while True:
            chunk = self.read_file(PACKAGE_SIZE)
            if chunk:
                image_page_array.append(chunk)
            else:
                break
        self.close_file()
        return image_page_array

    def receive_data(self, node, size):
        """
        @note: Receives data from the node and stores them in a data. (Obsolete, used only for debugging)
        @param node: Node number, to which the upgrade image will be send.
        @param size: Size of the data, that will be received.
        """
        rest_size = size
        print "Receive file with %s bytes." % size

        protocol_data = "%02X%02X" % (CMD_PRE, CMD_READ) + "%08X" % size
        print protocol_data
        address = dst_addresses[node - 1]
        print address
        page = 0

        self.open_file_to_write('receive_file')

        while rest_size:
            payload = protocol_data + "%04X" % page
            page += 1
            self.send(address, payload)

            reply = self.receive()

            if reply:
                self.write_file(reply[OFFSET_DATA:OFFSET_DATA + PACKAGE_SIZE])
                rest_size -= PACKAGE_SIZE
            else:
                print print_fail("Error: Receiving data")
                return
        print "All data received"

    def flash_firmware(self, node):
        """
        @note: Sends a request for a firmware update. That request starts the upgrade process.
        @param node: Node number, to which the upgrade image will be send.
        """
        print "Flash Firmware..."
        protocol_data = "%02X%02X" % (CMD_PRE, CMD_FLASH)

        self.send(dst_addresses[node - 1], protocol_data)

        reply = self.receive()

        if reply:
            # Convert Byte into Int
            error = bytearray(reply)[OFFSET_PAYLOAD]
            if error == 0:
                print print_ok("\n\tFlashing successfully finished!\n")
            else:
                print print_fail("\n\tERROR %s: Flashing Firmware\n" % error)
        else:
            print print_fail("ERROR: No Reply")

    def upgrade_nodes(self, nodes):
        """
        @note: Sends an upgrade image to a node.
        @param nodes: Node number, to which the upgrade image will be send.
        @return: True if sending was successful, otherwise false
        """
        sys.stdout.write("Update Firmware from node ")
        #address = dst_addresses[node - 1]
        #print print_bold(address)
        size = self.get_file_size()
        print "Send file with %s bytes:\n" % size
        print "Sending..."

        image = self.__read_image()

        threads = []
        lock = threading.Lock()
        for node in nodes:
            print "Start thread %s" % node
            address = dst_addresses[node - 1]
            t = threading.Thread(target=self.send_image, args=(self.socket_accept(), address, image, size, lock,))
            threads.append(t)
            t.start()

            #self.__progress_bar(page, size / PACKAGE_SIZE)

    def send_image(self, (conn, socket_addr), address, image, size, lock):
        print "Start %s" % address
        protocol_data = "%02X%02X" % (CMD_PRE, CMD_WRITE) + "%08X" % size

        page_index = 0
        for page in image:
            print "Page: %s" % page
            reply = NACK

            crc = self.__crc16(page)

            header = protocol_data + "%04X" % page_index
            payload = header + page.encode('hex') + "%04X" % crc
            page_index += 1

            # While the reply is not ACK, try to send the package again. Reason should only be a CRC error.
            while reply != ACK:
                self.send(address, payload, conn)

                reply_bytes = self.receive(own_socket=conn)

                if reply_bytes:
                    reply = bytearray(reply_bytes)[OFFSET_PAYLOAD]
                    if reply != ACK and reply != ERR_CRC:
                        sys.stdout.write(print_fail("\n\tError: Sending image"))
                        return False
                else:
                    print print_fail("\tERROR: No Reply")
                    return False

        sys.stdout.write("\n\n")

        return True

    def get_firmware_version(self, node):
        """
        @note: Sends a request to a node, to get the firmware version.
        @param node: Node number, to which the request will be send.
        """
        sys.stdout.write("Get Firmware Version from node ")

        protocol_data = "%02X%02X" % (CMD_PRE, CMD_VERSION)
        address = dst_addresses[node - 1]
        print print_bold(address)

        self.send(address, protocol_data)
        reply = self.receive()

        if reply:
            sys.stdout.write("\tFirmware version: ")
            print reply[OFFSET_PAYLOAD:OFFSET_PAYLOAD + 5]
        else:
            print print_fail("Error: Getting Firmware Version")


def main():
    parser = argparse.ArgumentParser(description='Synapticon SOMANET Firmware Update over Ethernet')
    parser.add_argument('interface', help='Network interface')
    parser.add_argument('-u', help='Firmware file path', dest='filepath')
    parser.add_argument('-n', type=int, help='Node number', dest='node')
    parser.add_argument('-v', action='store_true')

    group = parser.add_mutually_exclusive_group()
    group.add_argument('-s', type=int, help='Specify serial number (IP address?) for the ethernet slave', dest='serial')
    group.add_argument('-seq', type=int, help='Specify slave number 1..n', dest='seq')
    group.add_argument('-all', action='store_true', help='Use all slaves connected to the system', dest='all')
    group.add_argument('-scan', action='store_true', help='Scan the slave/slaves connected and display their serial number', dest='scan')
    group.add_argument('-dx', type=int, help='Specify the slave number and number of dx connected nodes', dest='dx')

    args = parser.parse_args()

    ifname = args.interface

    fm = FirmwareUpdate(ifname, args.filepath if args.filepath else '')
    fm.set_socket()

    if args.filepath:

        fm.set_timeout(500)

        if args.all:
            fm.upgrade_nodes([1, 6])
        else:
            if fm.send_image([args.node]):
                fm.flash_firmware(args.node)

    if args.v:
        fm.set_timeout(5)
        fm.get_firmware_version(args.node)

    if args.scan:
        fm.set_timeout(0.5)
        fm.scan_slaves()


if __name__ == '__main__':
    main()
