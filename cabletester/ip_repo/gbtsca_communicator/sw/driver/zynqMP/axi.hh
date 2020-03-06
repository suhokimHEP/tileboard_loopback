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
#include <unistd.h>
#include "hgcsca/Exception.hh"

#define AXI_BASEADDR 0x80000000
#define REGISTER_1_OFFSET 0x0
#define REGISTER_2_OFFSET 0x1
#define REGISTER_3_OFFSET 0x2
#define REGISTER_4_OFFSET 0x3
#define REGISTER_5_OFFSET 0x4
#define REGISTER_6_OFFSET 0x5
#define REGISTER_7_OFFSET 0x6
#define REGISTER_8_OFFSET 0x7
#define REGISTER_9_OFFSET 0x8
#define REGISTER_10_OFFSET 0x9
#define REGISTER_11_OFFSET 0xA
#define REGISTER_12_OFFSET 0xB
#define REGISTER_13_OFFSET 0xC
#define REGISTER_14_OFFSET 0xD
#define REGISTER_15_OFFSET 0xE
#define REGISTER_16_OFFSET 0xF

#ifdef __cplusplus  
extern "C" { 
#endif
  
// Send a 32-bit spi_read command, and keep the 16 bits that are returned.
int axi_get_16bits(uint32_t addr);

// Write 16-bit word to axilite 
int axi_write_16bits(uint32_t input, uint32_t addr);

// Advance the HDLC_rx read pointer
int axi_advance_read_pointer();

//Unlock SLCR registers and send reset pulse to reset the Chip
int send_reset();

//Reset the HDLC blocks
int reset_HDLC();

void configure_mmap();

void close_mmap();

#ifdef __cplusplus 
} 
#endif 
