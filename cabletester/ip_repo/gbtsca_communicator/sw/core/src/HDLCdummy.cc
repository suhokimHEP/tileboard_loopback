#include "hgcsca/HDLC.hh"

using namespace hgcsca;
class HDLCdummy : public hgcsca::HDLC {
public:
  HDLCdummy();

  virtual hgcsca::HDLC::Response requestSync(uint8_t channel, uint8_t reg, uint8_t len, uint32_t data);

  virtual bool reset();
  virtual bool resetHDLC();
private:
  hgcsca::HDLC::Response getResponse();
  int sequence_;
};

IMPLEMENT_HDLC_LOADER(HDLCdummy,dummy);

HDLCdummy::HDLCdummy() {
  sequence_=1;
}

bool HDLCdummy::reset() {
  printf("Dummy: reset!\n");
  return true;
}

bool HDLCdummy::resetHDLC() {
  printf("Dummy: reset HDLC!\n");
  return true;
}

HDLC::Response HDLCdummy::requestSync(uint8_t channel, uint8_t reg, uint8_t len, uint32_t data) {
  printf("Request: channel=0x%02x reg=0x%02x len=%d data=0x%08x\n",channel,reg,len,data);
  return HDLC::Response(this,len,0,~data);
}
