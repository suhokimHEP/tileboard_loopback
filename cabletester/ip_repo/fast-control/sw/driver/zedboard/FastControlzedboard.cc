#include "axi.h"
#include "hgcfc/FastControl.hh"

class FastControlzedboard : public hgcfc::FastControl {
public:
  FastControlzedboard();
  ~FastControlzedboard();

  virtual uint32_t requestSync(uint8_t addr, uint32_t data);

  virtual bool reset();
  virtual bool resetFastControl();
private:
  uint32_t getResponse(uint8_t addr);
  int sequence_;
};

IMPLEMENT_FASTCONTROL_LOADER(FastControlzedboard,zedboard);

FastControlzedboard::FastControlzedboard() {
  sequence_=1;
}

FastControlzedboard::~FastControlzedboard() {
}

bool FastControlzedboard::reset() {
  send_reset();
  stop_reset();
  sequence_=1;
  return true;
}

bool FastControlzedboard::resetFastControl() {
  resetFastControl();
  return true;
}

uint32_t FastControlzedboard::requestSync(uint8_t addr, uint32_t data) {

  //printf("channel: 0x%X, reg: 0x%X, len: 0x%X, data: 0x%X\n", channel, reg, len, data);
  printf("Starting write\n");

  axi_write(data, addr);

  return getResponse(addr);
}


uint32_t FastControlzedboard::getResponse(uint8_t addr) {

  uint32_t data(0);

  if(addr==0x0){
    data = axi_get_32bits(REGISTER_1_OFFSET);
  }else if(addr==0x1){
    data = axi_get_32bits(REGISTER_2_OFFSET);
  }else if(addr==0x2){
    data = axi_get_32bits(REGISTER_3_OFFSET);
  }else if(addr==0x3){
    data = axi_get_32bits(REGISTER_4_OFFSET);
  }else if(addr==0x4){
    data = axi_get_32bits(REGISTER_5_OFFSET);
  }else if(addr==0x5){
    data = axi_get_32bits(REGISTER_6_OFFSET);
  }

  return data;
}

