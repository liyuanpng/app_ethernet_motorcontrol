import socket
import fcntl, struct

class Ethernet_Master:
    def __init__(self, interface, ethertype):
        self.__interface = interface
        self.__ethertype = ethertype
        self.__socket = None
        self.__src_addr  = self.__getHwAddr(self.__interface)


    ##
    #   @brief Gets the MAC address from the interface. Works only on linux.
    #   @param[in]  ifname  The interface name as string
    #   @return     The MAC address as a readable string.
    #
    def __getHwAddr(self, ifname):
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        info = fcntl.ioctl(s.fileno(), 0x8927,  struct.pack('256s', ifname[:15]))
        return ':'.join(['%02x' % ord(char) for char in info[18:24]])


    ##
    #   @brief Replaces the colon from the MAC addresses and decode the string into hex bytes.
    #   @param[in]  data    Input string.
    #   @return     the decoded string with removed colon
    #
    def __strToHex(self, data):
        return data.replace(":", "").decode('hex')
    
    ##
    #   @brief Decodes a byte string in a readable hex string.
    #   @return     Hex string.
    #
    def byteToHexStr(self, data):
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
    def send(self, address, payload):
        packet = self.make_packet(address, payload)
        try:
            return self.__socket.send(packet)
        except socket.timeout:
            print '\033[93m' + "Warning: Sending reached Timeout!" + '\033[0m'
    
    ##
    #   @brief Receives reply.
    #   @return     Reply.
    #
    def receive(self):
        try:
            return self.__socket.recv(1024)
        except socket.timeout:
            print '\033[93m' + "Warning: Receiving reached Timeout!" + '\033[0m'
    
    ##
    #   @brief Creates the socket and bind it to the interface.
    #
    def set_socket(self):
        self.__socket = socket.socket(socket.AF_PACKET, socket.SOCK_RAW, 
                                      socket.htons(int(self.__ethertype,16)))
        self.__socket.bind((self.__interface, 0))
    
    ##
    #   @brief Sets the timeout for the socket.
    #
    def set_timeout(self, time):
        if self.__socket:
            self.__socket.settimeout(time)