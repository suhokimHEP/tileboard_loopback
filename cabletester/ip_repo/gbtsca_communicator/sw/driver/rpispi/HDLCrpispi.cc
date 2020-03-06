#include "spi_common.h"
#include <unistd.h>
#include "hgcsca/HDLC.hh"

class HDLCrpispi : public hgcsca::HDLC {
public:
  HDLCrpispi();
  ~HDLCrpispi();

  virtual hgcsca::HDLC::Response requestSync(uint8_t channel, uint8_t reg, uint8_t len, uint32_t data);

  virtual bool reset();
private:
  hgcsca::HDLC::Response getResponse();
  int sequence_;
  int ns_,nr_;
  int timeout_mus;
};

IMPLEMENT_HDLC_LOADER(HDLCrpispi,rpispi);

HDLCrpispi::HDLCrpispi() {
  sequence_=1;
  timeout_mus=10000; // 10 millisec
  init_spi();
  bcm2835_spi_chipSelect(BCM2835_SPI_CS0);
}

HDLCrpispi::~HDLCrpispi() {
  end_spi();
}

bool HDLCrpispi::reset() {
  spi_put_16bits(0x150,0x8F00);
  spi_put_16bits(0x157,0xC001); // send it (and reset the ns counter)!
  getResponse();
  ns_=0;
  nr_=0;
  sequence_=1;
  return true;
}

hgcsca::HDLC::Response HDLCrpispi::requestSync(uint8_t channel, uint8_t reg, uint8_t len, uint32_t data) {
  sequence_++;
  if (sequence_==0xFF) sequence_=0x01;

  spi_put_16bits(0x150,sequence_|(int(channel)<<8));
  spi_put_16bits(0x151,len|(int(reg)<<8));
  int n=2;
  if (len==6) {
    spi_put_16bits(0x152,(data>>16)&0xFFFFu);
    spi_put_16bits(0x153,data&0xFFFFu);
    n=4;
  }
  if (len==4) {
    spi_put_16bits(0x152,data&0xFFFFu);
    n=3;
  }
  if (len==3) {
    spi_put_16bits(0x152,(data&0xFF)<<8);
    n=3;
  }
  spi_put_16bits(0x157,0x8010|n); // send it, with autoheader


  /* local calculation of nr/ns 
  uint16_t header=((nr_&0x7)<<(5+8))|((ns_&0x7)<<(1+8));
  printf("header: %04x\n",header);
  spi_put_16bits(0x150,header);
  spi_put_16bits(0x151,sequence_|(int(channel)<<8));
  spi_put_16bits(0x152,len|(int(reg)<<8));
  int n=3;
  if (len==6) {
    spi_put_16bits(0x153,(data>>16)&0xFFFFu);
    spi_put_16bits(0x154,data&0xFFFFu);
    n=5;
  }
  if (len==4) {
    spi_put_16bits(0x153,data&0xFFFFu);
    n=4;
  }
  spi_put_16bits(0x157,0x8000|n); // send it!
  ns_++; nr_++;
  */
  
  return getResponse();
}

/* This version uses the bitstream 

static unsigned char message[64]={0};
static int message_ptr=0;
static int bit_ptr=0;

static void unstuff(unsigned char c) {
  static int nstuff=0;
  for (int i=0; i<8; i++) {
    int ibit=(c>>i)&0x1;
    if (nstuff==5 && ibit==0) {
      nstuff=0;
    } else {
      message[message_ptr]|=(ibit)<<(bit_ptr);
      bit_ptr++;
      if (bit_ptr==8) {
        message_ptr++;
        message[message_ptr]=0;
        bit_ptr=0;
      }
      if (ibit) nstuff++;
      else nstuff=0;
    }
  }
}

hgcsca::HDLC::Response HDLCrpispi::getResponse() {
  message_ptr=0;
  message[0]=0;
  bit_ptr=0;
  for (int i=0; i<12; i++) {
    int x=spi_get_16bits(0x180+i);
    x=spi_get_16bits(0x180+i);
    if (i!=0) unstuff(x&0xFF);
    unstuff((x>>8)&0xFF);
  }

  int end_message=message_ptr;

  printf("[ ");
  for (int i=0; i<message_ptr; i++) {
    if (i>0 && (message[i]==0x7F || message[i]==0xFF)) {
      end_message=i-1;
      break;
    }
    printf("%02x ",message[i]);
  }

  // try to find the actual response
  int j=0;
  if (message[j]==0xFF) {
    j++;
    while (j<message_ptr && message[j-1]!=0x7E) j++;
  }
  printf("j=%d end=%d ] ",j,end_message);
  uint8_t addr, ctrl, trid, chan, err,len;
  uint32_t data=0;
   if (j<end_message) {
    addr=message[j];
    ctrl=message[j+1];
    trid=message[j+2];
    chan=message[j+3];
    err=message[j+4];
    len=message[j+5];

    // special hack for I2C blocks...
    if (chan>=3 && chan<=0x12) {
      len=0x2+(end_message-j-8);
    }

    if (len==0x4) {
      data=(message[j+6])+(uint32_t(message[j+7])<<8);
    }
    if (len==0x6) {
      data=(message[j+6])+(uint32_t(message[j+7])<<8);
      data<<=16;
      data|=(message[j+8])+(uint32_t(message[j+9])<<8);
    } if (len==0x3) {
      data=(message[j+7]);
    }
    return  hgcsca::HDLC::Response(this,len,err,data);
   }
   return hgcsca::HDLC::Response(0,0,0,0);
}
*/


hgcsca::HDLC::Response HDLCrpispi::getResponse() {
  do {
    uint16_t status=spi_get_16bits(0x1A7);

    int countdown=timeout_mus;

    while (countdown>0 && ((status&0x8000)==0)) {
      static const int sleep_us=100;
      usleep(sleep_us);
      status=spi_get_16bits(0x1A7);
      countdown-=sleep_us;
    }
    
    if ((status&0x8000)==0) {
      // no good response available!
      return hgcsca::HDLC::Response(0,0,0,0);
    }

    uint16_t buf[8];
    int len16=(status&0x7);
    for (int i=0; i<len16 && i<7; i++) buf[i]=spi_get_16bits(0x1A0+i);
    
    //bool crcok=(status&0x10); // should throw exception on failure, some day

    uint8_t addr, ctrl, trid, chan, err,len;
    uint32_t data(0);
    addr=buf[0]&0xFF;
    if (addr==0x00) {
      // ctrl=(buf[0]>>8)&0xFF;
      // trid=(buf[1]&0xFF);
      chan=(buf[1]>>8)&0xFF;
      err=buf[2]&0xFF;
      len=(buf[2]>>8)&0xFF;
    

      // special hack for I2C blocks...
      if (chan>=3 && chan<=0x12) {
	len=len16*2-6;
      }

      if (len==0x4) {
	data=buf[3];
      }
      if (len==0x6) {
	data=buf[3];
	data<<=16;
	data|=buf[4];
      } if (len==0x3) {
	data=(buf[3]>>8);
      }

      spi_put_16bits(0x1A7,1); // advance
      
      uint16_t status=spi_get_16bits(0x1A7);
      
      if ((status&0x8000)==0) { // ok, nothing left, that's good!
	return  hgcsca::HDLC::Response(this,len,err,data);
      } else {
	// this should be an error, but I've not consumed everything available!
      }
    } else {
      spi_put_16bits(0x1A7,1);
    }
  } while (1); // internal breaks...
}

