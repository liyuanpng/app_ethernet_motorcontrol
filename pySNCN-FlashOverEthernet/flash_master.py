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
        EthernetMaster.__init__(self, iface, ethertype)
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
        @note: Sends a broadcast packet and asks for the firmware version. The result will be stored.
        """
        print "\nScanning devices..."
        #prog_bar = ProgressBar(nodes, ScanNodes)
        #prog_bar.start()
        #prog_bar.join()
        self.set_socket()
        self.set_timeout(1)

        protocol_data = "%02X%02X" % (CMD_PRE, CMD_VERSION)
        self.send(broadcast, protocol_data)
        t_start = time.time()

        # Search n seconds
        while (time.time() - t_start) < 2:
            reply = self.receive(error_msg=False)
            if reply:
                node_mac = reply[OFFSET_SRC_MAC:OFFSET_SRC_MAC+6].encode('hex')
                #sys.stdout.write("found node " + node_mac + "\n\n")
                #sys.stdout.flush()
                self.__found_nodes.append(node_mac)

        #self.__progress_bar(nodes, nodes)
        found = len(self.__found_nodes)
        print "...done\n"
        print "Found %d node%s:" % (found, 's' if found > 1 else '')
        # Print the mac addresses in fancy format.
        print '\n'.join(':'.join(a+b for a, b in zip(adr[::2], adr[1::2])) for adr in self.__found_nodes)
        return self.__found_nodes

    @staticmethod
    def __progress_bar(progress, max_val):
        """
        @note: Calculates and shows a progress bar.
        @param progress: The actual progress
        @param max_val: The maximum
        """
        sys.stdout.write("\r[%-50s] %d%%" % ('=' * ((progress * 50) / max_val), ((progress * 100) / max_val)))
        sys.stdout.flush()

    def __read_image(self, file_name):
        image_page_array = []
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

    def read_images(self, nodes):
        images_array = []

        if len(nodes) == 1:
            file_name = self.__filename
            images_array.append(self.__read_image(file_name))
        else:
            for node in nodes:
                file_name = self.__filename + '_%s' % node
                images_array.append(self.__read_image(file_name))

        return images_array

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
    def flash_firmware(addresses):
        """
        @note: Sends a request for a firmware update. That request starts the upgrade process.
        @param nodes: Node number, to which the upgrade image will be send.
        """
        print "Flash Firmware..."

        threads = []
        lock = threading.Lock()
        print "Starte Threads"

        for address in addresses:
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

    def send_images(self, addresses, images):
        """
        @note: Sends an upgrade image to a node.
        @param nodes: Node number, to which the upgrade image will be send.
        @return: True if sending was successful, otherwise false
        """

        print "Update Firmware from %s nodes\n" % len(addresses)

        #print "Send file with %s bytes:\n" % size
        print "Sending..."

        threads = []
        lock = threading.Lock()
        #print "Start Threads"
        if len(addresses) != len(images):
            print 'Error: Not enough address or files'
            return -1

        for address, image in zip(addresses, images):
            size = len(image)*len(image[0])
            print size
            t = SendImage(image, address, size, lock)
            threads.append(t)
            t.start()

        #print "Wait until every thread is terminated"

        #print "%s threads are running" % SendImage.thread_count

        prog_bar = ProgressBar(256*len(addresses), SendImage)
        prog_bar.start()
        prog_bar.join()

        success = True
        for t in threads:
            t.join()
            success &= t.success

        if SendImage.thread_count > 0:
            print "There is something still living..."

        return success

    def get_firmware_version(self, addresses):
        """
        @note: Sends a request to a node, to get the firmware version.
        @param node: Node number, to which the request will be send.
        """
        sys.stdout.write("Get Firmware Version from node ")

        protocol_data = "%02X%02X" % (CMD_PRE, CMD_VERSION)

        for address in addresses:
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
    group.add_argument('-a', type=int, help='Specify the node address for the ethernet slave.', dest='address')
    #group.add_argument('-seq', type=int, help='Specify slave number 1..n', dest='seq')
    group.add_argument('-all', action='store_true', help='Use all slaves connected to the system', dest='all')
    group.add_argument('-scan', action='store_true', help='Scan the slave/slaves connected and display their MAC addresses', dest='scan')
    #group.add_argument('-dx', type=int, help='Specify the slave number and number of dx connected nodes', dest='dx')

    args = parser.parse_args()

    ifname = args.interface

    fm = FirmwareUpdate(ifname, args.filepath)
    fm.set_socket()
    try:
        if args.filepath:

            fm.set_timeout(5)

            if args.node:
                address = dst_addresses[args.node-1]
            elif args.all:
                if dst_addresses:
                    address = dst_addresses
                else:
                    address = fm.scan_slaves()
            elif args.scan:
                address = fm.scan_slaves()

            images = fm.read_images(address)
            if fm.send_images(address, images):
                fm.flash_firmware(address)

        elif args.version:
            if args.scan:
                address = fm.scan_slaves()
            else:
                address = dst_addresses[args.node-1]
            fm.set_timeout(5)
            fm.get_firmware_version(address)

        elif args.scan:
            #fm.set_timeout(0.5)
            fm.scan_slaves()
    except (KeyboardInterrupt, SystemExit):
        print 'Exit...'

if __name__ == '__main__':
    main()
