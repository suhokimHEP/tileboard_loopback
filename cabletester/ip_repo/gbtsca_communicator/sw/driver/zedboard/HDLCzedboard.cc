#include "axi.h"
#include "hgcsca/HDLC.hh"

class HDLCzedboard : public hgcsca::HDLC {
public:
  HDLCzedboard();
  ~HDLCzedboard();

  virtual hgcsca::HDLC::Response requestSync(uint8_t channel, uint8_t reg, uint8_t len, uint32_t data);

  virtual bool reset();
  virtual bool resetHDLC();
private:
  hgcsca::HDLC::Response getResponse();
  int sequence_;
};

IMPLEMENT_HDLC_LOADER(HDLCzedboard,zedboard);

HDLCzedboard::HDLCzedboard() {
  sequence_=1;
}

HDLCzedboard::~HDLCzedboard() {
}

bool HDLCzedboard::reset() {
  send_reset();
  sequence_=1;
  return true;
}

bool HDLCzedboard::resetHDLC() {
  reset_HDLC();
  return true;
}

hgcsca::HDLC::Response HDLCzedboard::requestSync(uint8_t channel, uint8_t reg, uint8_t len, uint32_t data) {

  //printf("channel: 0x%X, reg: 0x%X, len: 0x%X, data: 0x%X\n", channel, reg, len, data);
  //printf("Starting write\n");

  sequence_++;
  if (sequence_==0xFF) sequence_=0x01;

  int n=2;
  if (len==6){
    n=4;
  }
  if (len==4){
    n=3;
  }
  if (len==3){
    n=3;
  }

  if (len==2){
    axi_write_16bits(sequence_|((int(channel)&0xFF)<<8),  REGISTER_1_OFFSET);
    axi_write_16bits(len|((int(reg)&0xFF)<<8), REGISTER_2_OFFSET);
    axi_write_16bits(0x8010|n, REGISTER_8_OFFSET);
  }
  if (len==3){
    axi_write_16bits(sequence_|((int(channel)&0xFF)<<8),  REGISTER_1_OFFSET);
    axi_write_16bits(len|((int(reg)&0xFF)<<8), REGISTER_2_OFFSET);
    axi_write_16bits((data&0xFF)<<8, REGISTER_3_OFFSET);
    axi_write_16bits(0x8010|n, REGISTER_8_OFFSET);
  }
  if (len==4){
    axi_write_16bits(sequence_|((int(channel)&0xFF)<<8),  REGISTER_1_OFFSET);
    axi_write_16bits(len|((int(reg)&0xFF)<<8), REGISTER_2_OFFSET);
    axi_write_16bits((data&0xFFFFu), REGISTER_3_OFFSET);
    axi_write_16bits(0x8010|n, REGISTER_8_OFFSET);
  }
  if (len==6){
    axi_write_16bits(sequence_|((int(channel)&0xFF)<<8),  REGISTER_1_OFFSET);
    axi_write_16bits(len|((int(reg)&0xFF)<<8), REGISTER_2_OFFSET);
    axi_write_16bits(((data>>16)&0xFFFFu), REGISTER_3_OFFSET);
    axi_write_16bits((data&0xFFFFu), REGISTER_4_OFFSET);
    axi_write_16bits(0x8010|n, REGISTER_8_OFFSET);
  }

  return getResponse();
}


hgcsca::HDLC::Response HDLCzedboard::getResponse() {

  uint16_t buf[8];

  buf[0] = axi_get_16bits(REGISTER_9_OFFSET);
  buf[1] = axi_get_16bits(REGISTER_10_OFFSET);
  buf[2] = axi_get_16bits(REGISTER_11_OFFSET);
  buf[3] = axi_get_16bits(REGISTER_12_OFFSET);
  buf[4] = axi_get_16bits(REGISTER_13_OFFSET);
  buf[5] = axi_get_16bits(REGISTER_14_OFFSET);
  buf[6] = axi_get_16bits(REGISTER_15_OFFSET);
//  buf[7] = axi_get_16bits(REGISTER_8_OFFSET);

    uint8_t addr, chan, err,len;
    uint32_t data(0);
    addr=buf[0]&0xFF;
    if (addr==0x00) {
      chan=(buf[1]>>8)&0xFF;
      err=buf[2]&0xFF;
      len=(buf[2]>>8)&0xFF;

      //special hack for I2C blocks...
      if (chan>=3 && chan<=0x12) {
          len=0x6;
          //len=len16*2-6;
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

      axi_advance_read_pointer();

    } else {
      axi_advance_read_pointer();
    }
  return  hgcsca::HDLC::Response(this,len,err,data);
}

