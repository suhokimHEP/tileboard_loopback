#include <stdlib.h>
#include <stdio.h>
#include "axi.h"

#define FATAL do { fprintf(stderr, "Error at line %d, file %s (%d) [%s]\n", \
  __LINE__, __FILE__, errno, strerror(errno)); exit(1); } while(0)

#define MAP_SIZE 4096UL
#define MAP_MASK (MAP_SIZE - 1)

// Send a 32-bit spi_read command, and keep the 16 bits that are returned.
int axi_get_16bits(int addr)
{
    int fd;
    void *map_base, *virt_addr;
    unsigned long read_result;
//    int AXI_address[25]= addr;

//    target = strtoul(AXI_address,0,0);

    if((fd = open("/dev/mem", O_RDWR | O_SYNC)) == -1) FATAL;
    //printf("/dev/mem opened.\n");
    fflush(stdout);

//    map_base = mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, target & ~MAP_MASK);
    map_base = mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, addr & ~MAP_MASK);
    if(map_base == (void *) -1) FATAL;
    //printf("Memory mapped at address %p.\n", map_base);
    fflush(stdout);

//    virt_addr = map_base + (target & MAP_MASK);
    virt_addr = map_base + (addr & MAP_MASK);

    read_result = *((unsigned long *) virt_addr);

    //printf("readback 0x%04X\n", read_result);
    fflush(stdout);

    if(munmap(map_base, MAP_SIZE) == -1) FATAL;
    close(fd);

    return (read_result);
}

// Advance the HDLC_rx read pointer
int axi_advance_read_pointer()
{
    //printf("Advancing read pointer\n");
    int fd;
    void *map_base, *virt_addr;

    if((fd = open("/dev/mem", O_RDWR | O_SYNC)) == -1) FATAL;
    fflush(stdout);

    map_base = mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, REGISTER_16_OFFSET & ~MAP_MASK);
    if(map_base == (void *) -1) FATAL;

    fflush(stdout);

    virt_addr = map_base + (REGISTER_16_OFFSET & MAP_MASK);

    int input=0.;

    *((unsigned long *) virt_addr) = input;

    //printf("Written 0x%08X\n", input);
    fflush(stdout);

    if(munmap(map_base, MAP_SIZE) == -1) FATAL;
    close(fd);

    return (0);

}


// Write 16-bit word to axilite
int axi_write_16bits(int input, int addr)
{
    int fd;
    void *map_base, *virt_addr;

    if((fd = open("/dev/mem", O_RDWR | O_SYNC)) == -1) FATAL;
    //printf("/dev/mem opened.\n");
    fflush(stdout);

    map_base = mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, addr & ~MAP_MASK);
    if(map_base == (void *) -1) FATAL;
    //printf("Memory mapped at address %p.\n", map_base);
    fflush(stdout);

    virt_addr = map_base + (addr & MAP_MASK);

    *((unsigned long *) virt_addr) = input;

    //printf("Written 0x%08X\n", input);
    fflush(stdout);

    if(munmap(map_base, MAP_SIZE) == -1) FATAL;
    close(fd);

    return (0);
}

//Write bit to set RESET_B
int send_reset()
{
    int fd;
    void *map_base, *virt_addr;

    if((fd = open("/dev/mem", O_RDWR | O_SYNC)) == -1) FATAL;
    fflush(stdout);

    map_base = mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, REGISTER_8_OFFSET & ~MAP_MASK);
    if(map_base == (void *) -1) FATAL;
    fflush(stdout);

    virt_addr = map_base + (REGISTER_8_OFFSET & MAP_MASK);

    *((unsigned long *) virt_addr) = 0x0040;
    fflush(stdout);

    if(munmap(map_base, MAP_SIZE) == -1) FATAL;
    close(fd);

    return (1);

}

//Reset the HDLC blocks
int reset_HDLC()
{
    int fd;
    void *map_base, *virt_addr;

    if((fd = open("/dev/mem", O_RDWR | O_SYNC)) == -1) FATAL;
    fflush(stdout);

    map_base = mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, REGISTER_8_OFFSET & ~MAP_MASK);
    if(map_base == (void *) -1) FATAL;
    fflush(stdout);

    virt_addr = map_base + (REGISTER_8_OFFSET & MAP_MASK);

    *((unsigned long *) virt_addr) = 0x0020;
    fflush(stdout);

    if(munmap(map_base, MAP_SIZE) == -1) FATAL;
    close(fd);

    return (1);
}
 
