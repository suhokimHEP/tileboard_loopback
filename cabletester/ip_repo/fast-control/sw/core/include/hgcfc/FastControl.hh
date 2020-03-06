#ifndef hgcfc_FastControl_hh_included
#define hgcfc_FastControl_hh_included 1

#include <stdint.h>
#include <vector>
#include <string>
#include <stdio.h>
#include <cstdlib>

namespace hgcfc {

  /** \class Concrete interface which provides a useful way to interact
          with the GBTSCA.
  */ 
  class FastControl {
  public:
    FastControl();
    virtual ~FastControl() { }

    virtual void configure(const std::string& uri) { }

    /////////////////////////////////////////////////////////////////
    /// Actions related to the Fast Control
    /////////////////////////////////////////////////////////////////
    void enableFCstream(bool enable=true);
    void forceIdle(bool force=true);
    void enableOrbitsync(bool enable=true);
    void enableCalibReq(bool enable=true);
    void enableCalibl1a(bool enable=true);
    void enablePeriodicl1aGenA(bool enable=true);
    void enablePeriodicl1aGenB(bool enable=true);

    void getControlStatus(bool& enabled, bool& idle_force, bool& orbitsync_enabled, bool& calibreq_enabled, bool& calibl1a_enabled, bool& l1agen_a_enabled, bool& l1agen_b_enabled);
    
    void generateOneCalibCycle();
    void OrbitCountReset();
    void LinkReset();
    void DAQresync();
    void L1AgenA();
    void L1AgenB();
    void internalTestReq();
    void resetCounters();

    void  setOrbitsyncBX(uint16_t BX);
    uint32_t getOrbitsyncBX();
    
    void setupCalibReq(const uint16_t& req_bx, const uint16_t& l1a_bx, const uint32_t& orbit_prescale, bool& send_regular_l1a);
    void getCalibReqSetup(uint16_t& req_bx, uint16_t& l1a_bx, uint32_t& orbit_prescale, bool& send_regular_l1a);

    // valid channels are 'A'/'a' and 'B'/'b'
    void setupL1AGen(char chan, uint16_t BX, uint32_t prescale);
    void getL1AGenSetup(char chan, uint16_t& BX, uint32_t& prescale);


    // read-only bits
    uint16_t firmwareVersion();
    uint16_t currentBX();

    enum CounterId { ctr_Errors=0, ctr_Orbitsync, ctr_OrbitCountReset, ctr_CalibrationRequest, ctr_CalibrationL1A, ctr_LinkReset, ctr_DAQResync, ctr_InternalTest, ctr_L1A, ctr_NID };
    std::vector<uint32_t> readCounters();
    uint32_t readCounter(CounterId ctr);
    
    
  private:

    void set_bit(uint8_t addr, int ibit);
    void clear_bit(uint8_t addr, int ibit);

    virtual void write(uint8_t addr, uint32_t data) = 0;
    virtual uint32_t read(uint8_t addr) = 0;

  };
  
}

#define IMPLEMENT_FASTCONTROL_LOADER(CLASS,NAME) extern "C" { hgcfc::FastControl* hgcfc_fastcontrol_make_ ## NAME () { return new CLASS (); } }

#endif //hgcfc_FastControl_hh_included
