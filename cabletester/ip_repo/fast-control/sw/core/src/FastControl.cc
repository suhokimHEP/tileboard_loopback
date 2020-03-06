#include "hgcfc/FastControl.hh"
#include "hgcfc/FastControlCommands.hh"

namespace hgcfc {

  void FastControl::set_bit(uint8_t addr, int ibit) {
    uint32_t val=read(addr);
    val=val|(1<<ibit);
    write(addr,val);
  }

  void FastControl::clear_bit(uint8_t addr, int ibit) {
    uint32_t val=read(addr);
    val=val&(0xFFFFFFFFu^(1<<ibit));
    write(addr,val);
  }
  
  FastControl::FastControl() {
  }
  

  void FastControl::enableFCstream(bool enable) { 
    if (enable) set_bit(FC_CONTROL_REGISTER, FC_CTL_ENABLE_FASTCONTROL_BIT);
    else clear_bit(FC_CONTROL_REGISTER, FC_CTL_ENABLE_FASTCONTROL_BIT);
  }

  void FastControl::forceIdle(bool enable) {
    if (enable) set_bit(FC_CONTROL_REGISTER, FC_CTL_FORCE_IDLES_BIT);
    else clear_bit(FC_CONTROL_REGISTER, FC_CTL_FORCE_IDLES_BIT);
  }

  void FastControl::enableOrbitsync(bool enable) {
    if (enable) set_bit(FC_CONTROL_REGISTER, FC_CTL_ENABLE_ORBITSYNC_BIT);
    else clear_bit(FC_CONTROL_REGISTER, FC_CTL_ENABLE_ORBITSYNC_BIT);
  }

  void FastControl::enableCalibReq(bool enable){
    if (enable) set_bit(FC_CONTROL_REGISTER, FC_CTL_ENABLE_CALIBREQ_BIT);
    else clear_bit(FC_CONTROL_REGISTER, FC_CTL_ENABLE_CALIBREQ_BIT);
  }

  void FastControl::enableCalibl1a(bool enable){
    if (enable) set_bit(FC_CONTROL_REGISTER, FC_CTL_ENABLE_CALIBL1A_BIT);
    else clear_bit(FC_CONTROL_REGISTER, FC_CTL_ENABLE_CALIBL1A_BIT);
  }

  void FastControl::enablePeriodicl1aGenA(bool enable){
    if (enable) set_bit(FC_CONTROL_REGISTER, FC_CTL_ENABLE_L1AGEN_A_BIT);
    else clear_bit(FC_CONTROL_REGISTER, FC_CTL_ENABLE_L1AGEN_A_BIT);
  }

  void FastControl::enablePeriodicl1aGenB(bool enable){
    if (enable) set_bit(FC_CONTROL_REGISTER, FC_CTL_ENABLE_L1AGEN_B_BIT);
    else clear_bit(FC_CONTROL_REGISTER, FC_CTL_ENABLE_L1AGEN_B_BIT);
  }

  void FastControl::getControlStatus(bool& enabled, bool& idle_force, bool& orbitsync_enabled, bool& calibreq_enabled, bool& calibl1a_enabled, bool& l1agen_a_enabled, bool& l1agen_b_enabled) {
    uint32_t ctlreg=read(FC_CONTROL_REGISTER);
    enabled=(0!=(ctlreg&(1<<FC_CTL_ENABLE_FASTCONTROL_BIT)));
    idle_force=(0!=(ctlreg&(1<<FC_CTL_FORCE_IDLES_BIT)));
    orbitsync_enabled=(0!=(ctlreg&(1<<FC_CTL_ENABLE_ORBITSYNC_BIT)));
    calibreq_enabled=(0!=(ctlreg&(1<<FC_CTL_ENABLE_CALIBREQ_BIT)));
    calibl1a_enabled=(0!=(ctlreg&(1<<FC_CTL_ENABLE_CALIBL1A_BIT)));
    l1agen_a_enabled=(0!=(ctlreg&(1<<FC_CTL_ENABLE_L1AGEN_A_BIT)));
    l1agen_b_enabled=(0!=(ctlreg&(1<<FC_CTL_ENABLE_L1AGEN_B_BIT)));
  }
  
  void FastControl::generateOneCalibCycle(){
    set_bit(FC_CONTROL_REGISTER, FC_CTL_ONETIME_CALIBREQ);
  }

  void FastControl::OrbitCountReset(){
    set_bit(FC_CONTROL_REGISTER, FC_CTL_ONETIME_ORBITCOUNTRESET);
  }

  void FastControl::LinkReset(){
    set_bit(FC_CONTROL_REGISTER, FC_CTL_ONETIME_LINKRESET);
  }

  void FastControl::DAQresync(){
    set_bit(FC_CONTROL_REGISTER, FC_CTL_ONETIME_DAQRESYNC);
  }

  void FastControl::L1AgenA(){
    set_bit(FC_CONTROL_REGISTER, FC_CTL_ONETIME_L1A_A);
  }

  void FastControl::L1AgenB(){
    set_bit(FC_CONTROL_REGISTER, FC_CTL_ONETIME_L1A_B);
  }

  void FastControl::internalTestReq(){
    set_bit(FC_CONTROL_REGISTER, FC_CTL_ONETIME_INTERNAL_TEST);
  }

  void FastControl::resetCounters(){
    set_bit(FC_CONTROL_REGISTER, FC_CTL_ONETIME_RESET_COUNTERS);
  }

  
  
  void FastControl::setOrbitsyncBX(uint16_t BX){
    write(FC_ORBITSYNC_BX_REGISTER, BX);
  }
  uint32_t FastControl::getOrbitsyncBX(){
    return read(FC_ORBITSYNC_BX_REGISTER);
  }

  void FastControl::setupCalibReq(const uint16_t& req_bx, const uint16_t& l1a_bx, const uint32_t& orbit_prescale, bool& send_regular_l1a) {
    uint32_t v1, v2;
    v1=(req_bx&FC_CALIBREQ_BX_MASK)<<FC_CALIBREQ_BX_OFFSET;
    v1|=(l1a_bx&FC_CALIBREQ_L1A_BX_MASK)<<FC_CALIBREQ_L1A_BX_OFFSET;
    if (send_regular_l1a) v1|=(1<<FC_CALIBREQ_REGULAR_L1A_OFFSET);
    v2=(orbit_prescale&FC_CALIBREQ_PRESCALE_MASK)<<FC_CALIBREQ_PRESCALE_OFFSET;
    write(FC_CALIBREQ_BX_REGISTER,v1);
    write(FC_CALIBREQ_PRESCALE_REGISTER,v2);
  }
  void FastControl::getCalibReqSetup(uint16_t& req_bx, uint16_t& l1a_bx, uint32_t& orbit_prescale, bool& send_regular_l1a) {
    uint32_t v1, v2;
    v1=read(FC_CALIBREQ_BX_REGISTER);
    v2=read(FC_CALIBREQ_PRESCALE_REGISTER);
    req_bx=(v1>>FC_CALIBREQ_BX_OFFSET)&(FC_CALIBREQ_BX_MASK);
    l1a_bx=(v1>>FC_CALIBREQ_L1A_BX_OFFSET)&(FC_CALIBREQ_L1A_BX_MASK);
    send_regular_l1a=(v1&(1<<FC_CALIBREQ_REGULAR_L1A_OFFSET));
    orbit_prescale=(v2>>FC_CALIBREQ_PRESCALE_OFFSET)&(FC_CALIBREQ_PRESCALE_MASK);
  }
  
  void FastControl::setupL1AGen(char chan, uint16_t BX, uint32_t prescale) {
    uint8_t whichReg=0;
    if (chan=='a' || chan=='A') whichReg=FC_L1A_GEN_A;
    else if (chan=='b' || chan=='B') whichReg=FC_L1A_GEN_B;
    else return; // nonesuch
    uint32_t v1;
    v1=(BX&FC_L1A_GEN_BX_MASK)<<FC_L1A_GEN_BX_OFFSET;
    v1|=(prescale&FC_L1A_GEN_PRESCALE_MASK)<<FC_L1A_GEN_PRESCALE_OFFSET;
    write(whichReg,v1);
  }

  void FastControl::getL1AGenSetup(char chan, uint16_t& BX, uint32_t& prescale) {
    uint8_t whichReg=0;
    if (chan=='a' || chan=='A') whichReg=FC_L1A_GEN_A;
    else if (chan=='b' || chan=='B') whichReg=FC_L1A_GEN_B;
    else return; // nonesuch
    uint32_t v1=read(whichReg);
    BX=(v1>>FC_L1A_GEN_BX_OFFSET)&(FC_L1A_GEN_BX_MASK);
    prescale=(v1>>FC_L1A_GEN_PRESCALE_OFFSET)&(FC_L1A_GEN_PRESCALE_MASK);
  }


  uint16_t FastControl::firmwareVersion() {
    uint32_t val=read(FC_FIRMWARE_VERSION_REG);
    return (val>>FC_FIRMWARE_VERSION_OFFSET)&FC_FIRMWARE_VERSION_MASK;
  }
  uint16_t FastControl::currentBX() {
    uint32_t val=read(FC_CURRENT_BX_REG);
    return (val>>FC_CURRENT_BX_OFFSET)&FC_CURRENT_BX_MASK;
  }

  std::vector<uint32_t> FastControl::readCounters() {
    std::vector<uint32_t> retval;
    for (int i=0; i<int(ctr_NID); i++)
      retval.push_back(read(FC_COUNTERS_BASE+i));
    return retval;
  }
  
  uint32_t FastControl::readCounter(CounterId ctr) {
    return read(FC_COUNTERS_BASE+int(ctr));
  }
  
}
