#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <signal.h>
#include <fcntl.h>
#include <ctype.h>
#include <termios.h>
#include <sys/types.h>
#include <sys/mman.h>

#define AXI_BASEADDR 0x43C10000
#define REGISTER_1_OFFSET 0x43C10000
#define REGISTER_2_OFFSET 0x43C10004
#define REGISTER_3_OFFSET 0x43C10008
#define REGISTER_4_OFFSET 0x43C1000C
#define REGISTER_5_OFFSET 0x43C10010
#define REGISTER_6_OFFSET 0x43C10014
#define REGISTER_7_OFFSET 0x43C10018
#define REGISTER_8_OFFSET 0x43C1001C
#define REGISTER_9_OFFSET 0x43C10020
#define REGISTER_10_OFFSET 0x43C10024
#define REGISTER_11_OFFSET 0x43C10028
#define REGISTER_12_OFFSET 0x43C1002C
#define REGISTER_13_OFFSET 0x43C10030
#define REGISTER_14_OFFSET 0x43C10034
#define REGISTER_15_OFFSET 0x43C10038
#define REGISTER_16_OFFSET 0x43C1003C

#define REGISTER_33_OFFSET 0x43C10080

#define XSLCR_UNLOCK_ADDR 0xF8000008
#define XSLCR_FPGA_RST_CTRL_ADDR 0xF8000240
#define XSLCR_LOCK_ADDR 0xF8000004

#ifdef __cplusplus  
extern "C" { 
#endif
  
// Send a 32-bit spi_read command, and keep the 16 bits that are returned.
int axi_get_32bits(int addr);

int axi_write(int input, int addr);

// Write 16-bit words to axilite
int axi_write_16bits(int input, int addr);

// Advance the HDLC_rx read pointer
int axi_advance_read_pointer();

//Unlock SLCR registers and send reset pulse to reset the Chip
int send_reset();

//Stop reset pulse and lock SLCR registers
int stop_reset();

//Reset the HDLC blocks
int reset_HDLC();

#ifdef __cplusplus 
} 
#endif 
