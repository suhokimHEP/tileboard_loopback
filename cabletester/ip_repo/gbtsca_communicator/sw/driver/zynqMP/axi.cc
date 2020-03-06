#include <stdlib.h>
#include <stdio.h>
#include "axi.hh"

#define FATAL do { fprintf(stderr, "Error at line %d, file %s (%d) [%s]\n", \
  __LINE__, __FILE__, errno, strerror(errno)); exit(1); } while(0)

#define MAP_SIZE 4096UL
#define MAP_MASK (MAP_SIZE - 1)

uint32_t baseAddress_ = AXI_BASEADDR;
int fd_;
uint32_t* mapbase_;

// Send a 32-bit spi_read command, and keep the 16 bits that are returned.
int axi_get_16bits(uint32_t addr)
{
    unsigned int read_result;

    read_result = mapbase_[addr];

//    printf("readback 0x%04X\n", read_result);

    return (read_result);
}

// Advance the HDLC_rx read pointer
int axi_advance_read_pointer()
{
//    printf("Advancing read pointer\n");

    int input=0.;
    mapbase_[REGISTER_16_OFFSET] = input;
    return (0);

}


// Write 16-bit word to axilite
int axi_write_16bits(uint32_t input, uint32_t addr)
{

    mapbase_[addr] = input;
//    printf("Written 0x%08X\n", input);

    return (0);
}

//Write bit to set RESET_B
int send_reset()
{

    mapbase_[REGISTER_8_OFFSET] = 0x0040;
    return (1);

}

//Reset the HDLC blocks
int reset_HDLC()
{

    mapbase_[REGISTER_8_OFFSET] = 0x0020;
    return (1);
}

void configure_mmap(){

  if ((fd_ = open("/dev/mem", O_RDWR | O_SYNC)) == -1) {
    HGCSCA_RAISE(hgcsca::Exception,"HDLCzynqMP driver unable to open /dev/mem");
  }

  mapbase_=(u_int32_t*) (mmap(0,MAP_SIZE,PROT_READ|PROT_WRITE,MAP_SHARED, fd_, baseAddress_));
  if (mapbase_ == (u_int32_t*)-1) {
    HGCSCA_RAISE(hgcsca::Exception,"HDLCzynqMP driver unable to memory map");
  }
} 

void close_mmap(){
  if (mapbase_!=0) {
    munmap(mapbase_, MAP_SIZE);
  }
  if (fd_>0) {
    close(fd_);
  }
}

