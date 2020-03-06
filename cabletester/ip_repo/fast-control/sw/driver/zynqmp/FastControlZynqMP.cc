#include "hgcfc/FastControl.hh"
#include "hgcfc/Exception.hh"
#include <sys/mman.h>
#include <fcntl.h>
#include <unistd.h>

/** Configuration can provide the base address */
class FastControlZynqMP : public hgcfc::FastControl {
public:
  FastControlZynqMP();
  ~FastControlZynqMP();

  virtual void configure(const std::string& uri);

private:
  virtual void write(uint8_t addr, uint32_t data) { mapbase_[addr]=data; }
  virtual uint32_t read(uint8_t addr) { return mapbase_[addr]; }

  uint32_t baseAddress_;
  int fd_;
  uint32_t* mapbase_;
};

IMPLEMENT_FASTCONTROL_LOADER(FastControlZynqMP,ZynqMP);

FastControlZynqMP::FastControlZynqMP() {
  baseAddress_=0x80001000;
  fd_=-1;
  mapbase_=0;
}

#define MAP_SIZE 4096UL
#define MAP_MASK (MAP_SIZE - 1)

FastControlZynqMP::~FastControlZynqMP() {
  if (mapbase_!=0) {
    munmap(mapbase_, MAP_SIZE);
  }
  if (fd_>0) {
    close(fd_);
  }    
}

void FastControlZynqMP::configure(const std::string& uri) {
  // add code to parse uri...

  if ((fd_ = open("/dev/mem", O_RDWR | O_SYNC)) == -1) {
    HGCFC_RAISE(hgcfc::Exception,"FastControlZymqMP driver unable to open /dev/mem");
  }
  
  mapbase_=(uint32_t*) (mmap(0,MAP_SIZE,PROT_READ|PROT_WRITE,MAP_SHARED, fd_, baseAddress_));
  if (mapbase_ == (uint32_t*)-1) {
    HGCFC_RAISE(hgcfc::Exception,"FastControlZymqMP driver unable to memory map");
  }
}


