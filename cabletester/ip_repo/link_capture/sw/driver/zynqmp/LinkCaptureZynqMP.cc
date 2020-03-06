#include "linkcapture/LinkCapture.hh"
#include "linkcapture/Exception.hh"
#include <sys/mman.h>
#include <fcntl.h>
#include <unistd.h>

#define MAP_SIZE 4096UL
#define MAP_MASK (MAP_SIZE - 1)

#define BRAM_SIZE 0x8000UL
#define BRAM_MASK (BRAM_SIZE - 1)


/** Configuration can provide the base address */
class LinkCaptureZynqMP : public linkcapture::LinkCapture {
public:
    LinkCaptureZynqMP();
    LinkCaptureZynqMP(uint32_t AXILiteAddr, uint32_t bramAddr);
    ~LinkCaptureZynqMP();

    virtual void configure(const std::string& uri);

private:
    virtual void write(uint32_t addr, uint32_t data)
    {
        mapbase_[addr/4]=data;
    }

    virtual uint32_t read(uint32_t addr)
    {
        return mapbase_[addr/4];
    }

    virtual uint32_t readBRAM(unsigned int index)
    {
        return brambase_[index];
    }

    virtual void clearBRAM()
    {
        for(unsigned int i = 0; i < BRAM_SIZE / 4; ++i) 
        {
            usleep(1);  //HACK HACK!!
            brambase_[i] = 0;
        }
    }

    int fd_;
    uint32_t* mapbase_;
    uint32_t* brambase_;
};

IMPLEMENT_LINKCAPTURE_LOADER(LinkCaptureZynqMP,ZynqMP);

LinkCaptureZynqMP::LinkCaptureZynqMP() : LinkCapture(0, 0 )
{   
    fd_=-1;
    mapbase_=0;
}

LinkCaptureZynqMP::LinkCaptureZynqMP(uint32_t AXILiteAddr, uint32_t bramAddr) : LinkCapture(AXILiteAddr, bramAddr)
{    
    fd_=-1;
    mapbase_=0;
}

LinkCaptureZynqMP::~LinkCaptureZynqMP() 
{
    if (mapbase_!=0) 
    {
        munmap(mapbase_, MAP_SIZE);
    }
    if (brambase_!=0) 
    {
        munmap(brambase_, BRAM_SIZE);
    }
    if (fd_>0)
    {
        close(fd_);
    }    
}

void LinkCaptureZynqMP::configure(const std::string& uri) 
{
    // add code to parse uri...

    if ((fd_ = open("/dev/mem", O_RDWR | O_SYNC)) == -1) 
    {
        LINKCAPTURE_RAISE(linkcapture::Exception,"LinkCaptureZymqMP driver unable to open /dev/mem");
    }
  
    if(axiliteAddr_)
    {
        mapbase_=(uint32_t*) (mmap(0,MAP_SIZE,PROT_READ|PROT_WRITE,MAP_SHARED, fd_, axiliteAddr_));
    }
    if (mapbase_ == (uint32_t*)-1) 
    {
        LINKCAPTURE_RAISE(linkcapture::Exception,"LinkCaptureZymqMP driver unable to memory map");
    }

    if(bramAddr_)
    {
        brambase_=(uint32_t*) (mmap(0,BRAM_SIZE,PROT_READ|PROT_WRITE,MAP_SHARED, fd_, bramAddr_));
    }
    if (brambase_ == (uint32_t*)-1) 
    {
        LINKCAPTURE_RAISE(linkcapture::Exception,"LinkCaptureZymqMP driver unable to memory map");
    }
}


