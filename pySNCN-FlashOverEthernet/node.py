import threading
import sys

from ethernet_master import *
from ethernet_settings import *
from print_color import *


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

    def run(self):
        self.lock.acquire()
        SendImage.thread_count += 1
        self.lock.release()
        print "Start %s" % self.mac_address
        protocol_data = "%02X%02X" % (CMD_PRE, CMD_WRITE) + "%08X" % self.size
        page_index = 0
        self.set_socket()

        for page in self.image:
            print "%s sends..." % self.mac_address[-2:]
            #print "Page: %s" % page
            reply = NACK

            crc = self.crc16(page)

            header = protocol_data + "%04X" % page_index
            payload = header + page.encode('hex') + "%04X" % crc
            page_index += 1

            # While the reply is not ACK, try to send the package again. Reason should only be a CRC error.
            while reply != ACK:
                send = self.send(self.mac_address, payload)

                reply_bytes = self.receive()

                if reply_bytes:
                    reply = bytearray(reply_bytes)[OFFSET_PAYLOAD]
                    if reply != ACK and reply != ERR_CRC:
                        sys.stdout.write(print_fail("\n\tERROR: Sending image"))
                        return False
                else:
                    print print_fail("\tERROR: No Reply")
                    return False
            self.lock.acquire()
            SendImage.progress += 1
            self.lock.release()

        sys.stdout.write("\n\n")
        print "Thread terminieren..."
        self.lock.acquire()
        SendImage.thread_count -= 1
        self.lock.release()
        #return True
        self.success = True


class FlashFirmware(threading.Thread, EthernetMaster):
    thread_count = 0

    def __init__(self, mac_address, lock):
        threading.Thread.__init__(self)
        EthernetMaster.__init__(self, interface, ethertype)
        self.mac_address = mac_address
        self.lock = lock
        self.success = False

    def run(self):
            #def flash_firmware(self, node):
        """
        @note: Sends a request for a firmware update. That request starts the upgrade process.
        @param node: Node number, to which the upgrade image will be send.
        """
        self.lock.acquire()
        FlashFirmware.thread_count += 1
        self.lock.release()
        protocol_data = "%02X%02X" % (CMD_PRE, CMD_FLASH)
        self.set_socket()

        self.send(self.mac_address, protocol_data)

        reply = self.receive()

        if reply:
            # Convert Byte into Int
            error = bytearray(reply)[OFFSET_PAYLOAD]
            if error == 0:
                print print_ok("\n\tFlashing successfully finished!\n")
                self.success = True
            else:
                print print_fail("\n\tERROR %s: Flashing Firmware\n" % error)
        else:
            print print_fail("ERROR: No Reply")
        self.lock.acquire()
        FlashFirmware.thread_count -= 1
        self.lock.release()
