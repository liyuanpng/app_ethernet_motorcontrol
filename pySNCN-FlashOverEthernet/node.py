import threading
import sys

from ethernet_master import *
from ethernet_settings import *
from print_color import *


class ProgressBar(threading.Thread):
    def __init__(self, max_val, class_):
        threading.Thread.__init__(self)
        self.max_val = max_val
        self.class_ = class_

    def run(self):
        progress = 0
        while progress < self.max_val:
            progress = self.class_.progress
            sys.stdout.write("\r[%-50s] %d%%" % ('=' * ((progress * 50) / self.max_val), ((progress * 100) / self.max_val)))
            sys.stdout.flush()


class SendImage(threading.Thread, EthernetMaster):
    thread_count = 0
    progress = 0

    def __init__(self, data, mac_address, size, lock):
        threading.Thread.__init__(self)
        EthernetMaster.__init__(self, interface, ethertype)
        self.size = size
        self.image = data
        self.mac_address = mac_address
        self.lock = lock
        self.success = False

    def thread_counter(self, num):
        self.lock.acquire()
        SendImage.thread_count += num
        self.lock.release()

    def progress_counter(self, num):
        self.lock.acquire()
        SendImage.progress += num
        self.lock.release()

    def is_for_me(self, packet):
        return packet[OFFSET_SRC_MAC:OFFSET_SRC_MAC + 6].encode('hex') == self.mac_address.replace(":", "")

    def run(self):
        self.thread_counter(1)
        #print "Start %s" % self.mac_address
        protocol_data = "%02X%02X" % (CMD_PRE, CMD_WRITE) + "%08X" % self.size
        page_index = 0
        self.set_socket()
        self.set_timeout(5)

        for page in self.image:
            #print "%s sends..." % self.mac_address[-2:]
            #print "Page: %s" % page
            reply = NACK

            crc = self.crc16(page)

            header = protocol_data + "%04X" % page_index
            payload = header + page.encode('hex') + "%04X" % crc
            page_index += 1

            # While the reply is not ACK, try to send the package again. Reason should only be a CRC error.
            while reply != ACK:
                self.send(self.mac_address, payload)

                reply_bytes = self.receive()

                if reply_bytes and self.is_for_me(reply_bytes):
                    reply = bytearray(reply_bytes)[OFFSET_PAYLOAD]
                    if reply != ACK and reply != ERR_CRC:
                        sys.stdout.write(print_fail("\n\tERROR: Sending image"))
                        self.thread_counter(-1)
                        self.success = False
                        return
                else:
                    print print_fail("\tERROR: No Reply")
                    self.thread_counter(-1)
                    self.success = False
                    return
            self.progress_counter(1)

        sys.stdout.write("\n\n")
        self.success = True
        self.thread_counter(-1)


class FlashFirmware(threading.Thread, EthernetMaster):
    thread_count = 0

    def __init__(self, mac_address, lock):
        threading.Thread.__init__(self)
        EthernetMaster.__init__(self, interface, ethertype)
        self.mac_address = mac_address
        self.lock = lock
        self.success = False

    def thread_counter(self, num):
        self.lock.acquire()
        FlashFirmware.thread_count += num
        self.lock.release()

    def run(self):
        """
        @note: Sends a request for a firmware update. That request starts the upgrade process.
        @param node: Node number, to which the upgrade image will be send.
        """
        self.thread_counter(1)
        protocol_data = "%02X%02X" % (CMD_PRE, CMD_FLASH)
        self.set_socket()
        self.set_timeout(5)

        self.send(self.mac_address, protocol_data)
        reply = self.receive()

        if reply:
            error = bytearray(reply)[OFFSET_PAYLOAD]
            if error == 0:
                print print_ok("\n\tFlashing successfully finished!\n")
                self.success = True
            else:
                print print_fail("\n\tERROR %s: Flashing Firmware\n" % error)
        else:
            print print_fail("ERROR: No Reply")
        self.thread_counter(-1)
