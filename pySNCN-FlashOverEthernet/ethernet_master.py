import socket
import fcntl
import struct
from ctypes import c_ushort

from print_color import *


class EthernetMaster:
    def __init__(self, interface, ethertype):
        self.__interface = interface
        self.__ethertype = ethertype
        self.__socket = None
        self.__src_addr  = self.__getHwAddr(self.__interface)
        #self.__process_id = id

    ##
    #   @brief Gets the MAC address from the interface. Works only on linux.
    #   @param[in]  ifname  The interface name as string
    #   @return     The MAC address as a readable string.
    #
    @staticmethod
    def __getHwAddr(ifname):
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        info = fcntl.ioctl(s.fileno(), 0x8927,  struct.pack('256s', ifname[:15]))
        return ':'.join(['%02x' % ord(char) for char in info[18:24]])

    ##
    #   @brief Replaces the colon from the MAC addresses and decode the string into hex bytes.
    #   @param[in]  data    Input string.
    #   @return     the decoded string with removed colon
    #
    @staticmethod
    def __strToHex(data):
        return data.replace(":", "").decode('hex')

    @staticmethod
    def crc16(data):
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
    
    ##
    #   @brief Decodes a byte string in a readable hex string.
    #   @return     Hex string.
    #
    @staticmethod
    def byteToHexStr(data):
        if data is not None:
            return "".join("{:02x}".format(ord(c)) for c in data)
        else:
            return ""

    ##
    #   @brief Put all data into a ethernet packet and decode it in a byte string.
    #   @param[in]  address  Destination mac address as a index for the address list.
    #   @param[in]  payload  Data to be transfered.
    #   @return     The packet as a byte string.
    # 
    def make_packet(self, address, payload):
        val = address + self.__src_addr + self.__ethertype + payload
        return self.__strToHex(val)

    ##
    #   @brief  Put address and payload into a packet and sends it.
    #   @param[in]  address  Destination mac address as a index for the address list.
    #   @param[in]  payload  Data to be transfered.
    #   @return     Amount of transfered bytes.
    #
    def send(self, address, payload, own_socket=None):
        packet = self.make_packet(address, payload)
        try:
            if own_socket:
                return own_socket.send(packet)
            else:
                return self.__socket.send(packet)
        except socket.timeout:
            print print_warning("Warning: Sending reached Timeout!")
    
    ##
    #   @brief Receives reply.
    #   @return     Reply.
    #
    def receive(self, error_msg=True, own_socket=None):
        try:
            if own_socket:
                return own_socket.recv(1024)
            else:
                return self.__socket.recv(1024)
        except socket.timeout:
            if error_msg:
                print print_warning("Warning: Receiving reached Timeout!")
    
    ##
    #   @brief Creates the socket and bind it to the interface.
    #
    def set_socket(self):
        self.__socket = socket.socket(socket.AF_PACKET, socket.SOCK_RAW, 
                                      socket.htons(int(self.__ethertype, 16)))
        self.__socket.bind((self.__interface, 0))#50000 + self.__process_id))
    
    ##
    #   @brief Sets the timeout for the socket.
    #
    def set_timeout(self, time):
        if self.__socket:
            self.__socket.settimeout(time)

