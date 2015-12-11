# List with the MAC address of the nodes.
dst_addresses = ["F0:CA:F0:CA:F0:01",
                 "F0:CA:F0:CA:F0:02",
                 "F0:CA:F0:CA:F0:03",
                 "F0:CA:F0:CA:F0:04",
                 "F0:CA:F0:CA:F0:05",
                 "F0:CA:F0:CA:F0:06",
                 "F0:CA:F0:CA:F0:07",
                 "F0:CA:F0:CA:F0:08",
                 "F0:CA:F0:CA:F0:09",
                 "F0:CA:F0:CA:F0:0A",
                 "F0:CA:F0:CA:F0:0B",
                 "F0:CA:F0:CA:F0:0C",
                 "F0:CA:F0:CA:F0:0D",
                 "F0:CA:F0:CA:F0:0E",
                 "F0:CA:F0:CA:F0:0F",
                 "F0:CA:F0:CA:F0:10",
                 "F0:CA:F0:CA:F0:11",
                 "F0:CA:F0:CA:F0:12",
                 "F0:CA:F0:CA:F0:13",
                 "F0:CA:F0:CA:F0:14",
                 "F0:CA:F0:CA:F0:15",
                 "F0:CA:F0:CA:F0:16",
                 "F0:CA:F0:CA:F0:17",
                 "F0:CA:F0:CA:F0:18",
                 "F0:CA:F0:CA:F0:19",
                 "F0:CA:F0:CA:F0:1A",
                 "F0:CA:F0:CA:F0:1B",
                 "F0:CA:F0:CA:F0:1C",
                 "F0:CA:F0:CA:F0:1D",
                 "F0:CA:F0:CA:F0:1E",
                 "F0:CA:F0:CA:F0:1F",
                 "F0:CA:F0:CA:F0:20",
                 "F0:CA:F0:CA:F0:21",
                 "F0:CA:F0:CA:F0:22",
                 "F0:CA:F0:CA:F0:23",
                 "F0:CA:F0:CA:F0:24",
                 "F0:CA:F0:CA:F0:25",
                 "F0:CA:F0:CA:F0:26",
                 "F0:CA:F0:CA:F0:27",
                 "F0:CA:F0:CA:F0:28",
                 "F0:CA:F0:CA:F0:29",
                 "F0:CA:F0:CA:F0:2A",
                 "F0:CA:F0:CA:F0:2B",
                 "F0:CA:F0:CA:F0:2C"]
             
# Interface name, only on Linux.           
interface = "eth0"
# Ethertype are byte 13 and 14 in the ethernet packet
ethertype = "0801"

PACKAGE_SIZE    = 256
OFFSET_DATA     = 22
OFFSET_PAYLOAD  = 14
ERR_CRC         = 0xFC
ACK             = 0xFF
NACK            = 0x0
CMD_PRE         = 0xF1
CMD_VERSION     = 0x04
CMD_WRITE       = 0x03
CMD_READ        = 0x01
CMD_FLASH       = 0x05
