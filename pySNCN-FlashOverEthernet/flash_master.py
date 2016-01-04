"""
@brief Upgrades the firmware of SOMANET modules over ethernet.

 Created on: Nov 1, 2015
       Author: hstroetgen
"""

import argparse
import os
import time
import sys
from ctypes import c_ushort
import threading

from ethernet_master import *
from ethernet_settings import *
from node import *
from print_color import *


class FirmwareUpdate(EthernetMaster):
    def __init__(self, iface, filename=''):
        EthernetMaster.__init__(self, iface, ethertype, 0)
        self.__filename = filename
        self.__file_handler = None
        self.__found_nodes = []
        self.__thread_progress = 0

    def open_file_to_read(self, file_name=None):
        try:
            if file_name:
                self.__file_handler = open(file_name, "rb")
            else:
                self.__file_handler = open(self.__filename, "rb")
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

    def get_file_size(self, node=None):
        if node:
            return os.path.getsize(self.__filename + '_%s' % node)
        else:
            return os.path.getsize(self.__filename)

    def scan_slaves(self):
        """
        @note: Iterates through the mac address list and asks for the firmware version. The result will be stored.
        """
        print "\nScanning devices..."
        nodes = len(dst_addresses)
        #prog_bar = ProgressBar(nodes, ScanNodes)
        #prog_bar.start()
        #prog_bar.join()
        reply = None
        self.set_socket()
        self.set_timeout(10)

        protocol_data = "%02X%02X" % (CMD_PRE, CMD_VERSION)
        self.send(broadcast, protocol_data)
        t_start = time.time()
        # Search 10 seconds
        found_nodes = []
        while (time.time() - t_start) < 10:
            reply = self.receive(error_msg=False)

            if reply:
                answer = reply.encode('hex')
                sys.stdout.write("found node " + answer[OFFSET_SRC_MAC:OFFSET_SRC_MAC+6] + "\n\n")
                sys.stdout.flush()
                found_nodes = answer[OFFSET_SRC_MAC:OFFSET_SRC_MAC+6]

        #self.__progress_bar(nodes, nodes)
        found = len(found_nodes)
        print "\n...done"
        print "Found %d node%s:" % (found, 's' if found > 1 else '')
        print found_nodes

    @staticmethod
    def __progress_bar(progress, max_val):
        """
        @note: Calculates and shows a progress bar.
        @param progress: The actual progress
        @param max_val: The maximum
        """
        sys.stdout.write("\r[%-50s] %d%%" % ('=' * ((progress * 50) / max_val), ((progress * 100) / max_val)))
        sys.stdout.flush()

    def __read_image(self, node):
        image_page_array = []
        file_name = self.__filename + '_%s' % node
        print file_name
        self.open_file_to_read(file_name)
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

    @staticmethod
    def flash_firmware(nodes):
        """
        @note: Sends a request for a firmware update. That request starts the upgrade process.
        @param nodes: Node number, to which the upgrade image will be send.
        """
        print "Flash Firmware..."

        threads = []
        lock = threading.Lock()
        print "Starte Threads"

        for node in nodes:
            address = dst_addresses[node - 1]
            t = FlashFirmware(address, lock)
            threads.append(t)
            t.start()

        print "Warte bis alle terminieren"

        print "Es laufen gerade %s Threads" % FlashFirmware.thread_count
        for t in threads:
            t.join()

        if FlashFirmware.thread_count == 0:
            print "Alle Threads tot"
        else:
            print "Da lebt noch was..."

    def send_images(self, nodes):
        """
        @note: Sends an upgrade image to a node.
        @param nodes: Node number, to which the upgrade image will be send.
        @return: True if sending was successful, otherwise false
        """
        print "Update Firmware from %s nodes\n" % len(nodes)

        #print "Send file with %s bytes:\n" % size
        print "Sending..."

        threads = []
        lock = threading.Lock()
        #print "Start Threads"

        for node in nodes:
            size = self.get_file_size(node)
            print size
            image = self.__read_image(node)
            address = dst_addresses[node - 1]
            t = SendImage(image, address, size, lock)
            threads.append(t)
            t.start()

        #print "Wait until every thread is terminated"

        #print "%s threads are running" % SendImage.thread_count

        prog_bar = ProgressBar(256*len(nodes), SendImage)
        prog_bar.start()
        prog_bar.join()

        success = True
        for t in threads:
            t.join()
            success &= t.success

        if SendImage.thread_count > 0:
            print "There is something still living..."

        return success

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
    parser.add_argument('-u', default=None, help='Firmware upgrade option, followed by the image path', dest='filepath')
    parser.add_argument('-n', type=int, help='Node number', dest='node')
    parser.add_argument('-v', action='store_true', help='Gets the firmware version of the specified node.', dest='version')

    group = parser.add_mutually_exclusive_group()
    group.add_argument('-s', type=int, help='Specify serial number (IP address?) for the ethernet slave', dest='serial')
    group.add_argument('-seq', type=int, help='Specify slave number 1..n', dest='seq')
    group.add_argument('-all', action='store_true', help='Use all slaves connected to the system', dest='all')
    group.add_argument('-scan', action='store_true', help='Scan the slave/slaves connected and display their serial number', dest='scan')
    group.add_argument('-dx', type=int, help='Specify the slave number and number of dx connected nodes', dest='dx')

    args = parser.parse_args()

    ifname = args.interface

    fm = FirmwareUpdate(ifname, args.filepath)
    fm.set_socket()
    try:
        if args.filepath:

            fm.set_timeout(500)

            if args.all:
                if fm.send_images([1, 6]):
                    fm.flash_firmware([1, 6])
            else:
                if fm.send_images([args.node]):
                    fm.flash_firmware([args.node])

        if args.version:
            fm.set_timeout(5)
            fm.get_firmware_version(args.node)

        if args.scan:
            fm.set_timeout(0.5)
            fm.scan_slaves()
    except (KeyboardInterrupt, SystemExit):
        raise

if __name__ == '__main__':
    main()
