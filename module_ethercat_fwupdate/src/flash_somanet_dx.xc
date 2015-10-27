/**
 * @file flash_somanet_dx.xc
 * @brief Somanet Firmware Update implementation
 * @brief Flash device access
 * @author Synapticon GmbH <support@synapticon.com>
 */

#include "flash_somanet.h"
#include "flash_write.h"

#define READY_TO_FLASH  20

void firmware_update_dx(fl_SPIPorts &SPI, chanend c_node, int node_number)
{
    char buffer[BUFFER_SIZE];
    unsigned address = 0;
    int command;
    int flag = 0;
    int end_flag = 0;
    int cmd;
    int size = 0;

    while (1) {
        select {
            /* Firmware update over DX (signaled over c_node) / Read Permanent Config */
        case c_node :> node_number:
            c_node :> command;
            address = 0;
            if (command == 0x34) {
                flash_setup(1, SPI);
                //indicate ready to fw_update

                while (1) {
                    select {
                    case c_node :> cmd:
                        if (cmd == 10) {
                            c_node <: READY_TO_FLASH;
                            end_flag = 0;
                            while (1) {
                                select {
                                case c_node :> size:
                                    for (int i=0; i<size; i++) {
                                        int tmp;
                                        c_node :> tmp;
                                        buffer[i] = tmp;
                                    }
                                    flash_buffer(buffer, size, address);
                                    address += size;
                                    end_flag = 1;
                                    break;
                                }
                                if (end_flag == 1)
                                    break;
                            }
                        } else if (cmd == 100) {
                            c_node :> cmd;
                            fl_endWriteImage();
                            flag = 3;
                        }
                        break;
                    }

                    if (flag == 3) {
                        flag = 1;
                        break;
                    }
                }
            }
            break;
        }
        //printstrln("out of loop");
    }
}
