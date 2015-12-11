import threading
from ethernet_settings import *
from ethernet_master import *


class NodeUpgrade(threading.Thread, EthernetMaster):
    def __init__(self, (conn, address), data, mac_address):
        threading.Thread.__init__(self)
        EthernetMaster.__init__(self, interface, ethertype)
        self.socket = conn
        self.address = address
        self.image = data
        self.mac_address = mac_address

    def run(self):
        print "Start %s" % self.mac_address
        protocol_data = "%02X%02X" % (CMD_PRE, CMD_WRITE) + "%08X" % size

        page_index = 0
        for page in self.image:
            print "Page: %s" % page
            reply = NACK

            crc = self.__crc16(page)

            header = protocol_data + "%04X" % page_index
            payload = header + page.encode('hex') + "%04X" % crc
            page_index += 1

            # While the reply is not ACK, try to send the package again. Reason should only be a CRC error.
            while reply != ACK:
                self.send(self.mac_address, payload, self.socket)

                reply_bytes = self.receive(own_socket=self.socket)

                if reply_bytes:
                    reply = bytearray(reply_bytes)[OFFSET_PAYLOAD]
                    if reply != ACK and reply != ERR_CRC:
                        #sys.stdout.write(print_fail("\n\tError: Sending image"))
                        return False
                else:
                    #print print_fail("\tERROR: No Reply")
                    return False

        #sys.stdout.write("\n\n")

        return True
