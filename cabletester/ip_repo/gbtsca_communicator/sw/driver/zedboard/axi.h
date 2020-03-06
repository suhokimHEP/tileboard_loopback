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

#define AXI_BASEADDR 0x43C00000
#define REGISTER_1_OFFSET 0x43C00000
#define REGISTER_2_OFFSET 0x43C00004
#define REGISTER_3_OFFSET 0x43C00008
#define REGISTER_4_OFFSET 0x43C0000C
#define REGISTER_5_OFFSET 0x43C00010
#define REGISTER_6_OFFSET 0x43C00014
#define REGISTER_7_OFFSET 0x43C00018
#define REGISTER_8_OFFSET 0x43C0001C
#define REGISTER_9_OFFSET 0x43C00020
#define REGISTER_10_OFFSET 0x43C00024
#define REGISTER_11_OFFSET 0x43C00028
#define REGISTER_12_OFFSET 0x43C0002C
#define REGISTER_13_OFFSET 0x43C00030
#define REGISTER_14_OFFSET 0x43C00034
#define REGISTER_15_OFFSET 0x43C00038
#define REGISTER_16_OFFSET 0x43C0003C

#define XSLCR_UNLOCK_ADDR 0xF8000008
#define XSLCR_FPGA_RST_CTRL_ADDR 0xF8000240
#define XSLCR_LOCK_ADDR 0xF8000004

#ifdef __cplusplus  
extern "C" { 
#endif
  
// Send a 32-bit spi_read command, and keep the 16 bits that are returned.
int axi_get_16bits(int addr);

// Write 16-bit word to axilite 
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
