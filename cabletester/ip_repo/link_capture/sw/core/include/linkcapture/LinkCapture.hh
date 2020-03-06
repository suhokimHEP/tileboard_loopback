#ifndef linkcapture_LinkCapture_hh_included
#define linkcapture_LinkCapture_hh_included 1

#include <stdint.h>
#include <vector>
#include <string>
#include <stdio.h>
#include <cstdlib>

namespace linkcapture {

  /** \class Concrete interface which provides a useful way to interact
          with the GBTSCA.
  */ 
class LinkCapture {
  public:

    class LinkCaptureStatus
    {
    public:
        //parse status register
        bool link_aligned;
        bool delay_ready;
        bool waiting_for_trig;
        bool writing_data;

        //idelay setting 
        uint32_t delay;

        //link align counters 
        uint32_t link_aligned_cnt;
        uint32_t link_error_cnt;

        //align state
        uint32_t align_state;

        uint32_t align_pattern;
        uint32_t delay_in;
        uint32_t capture_mode;
        uint32_t l1aoffset_or_bx;
        uint32_t aquire_length;
        
    };

    LinkCapture(uint32_t AXILiteAddr, uint32_t bramAddr);
    virtual ~LinkCapture() { }

    virtual void configure(const std::string& uri) { }

    void setAddresses(uint32_t AXILiteAddr, uint32_t bramAddr);

    /////////////////////////////////////////////////////////////////
    /// Actions related to the Fast Control
    /////////////////////////////////////////////////////////////////
    
    void reset();

    void align();

    void aquire();

    LinkCaptureStatus getStatus();

    void setDelay(uint32_t delay);

    void setAlignPattern(uint32_t align_pattern);

    void setL1OffsetOrBX(uint32_t offset_or_bx);

    void setCaptureMode(uint32_t capture_mode);

    void setAquireLength(uint32_t aquire_length);

    void dumpData();

    void resetBRAM();
    
  protected:
    uint32_t axiliteAddr_;
    uint32_t bramAddr_;



  private:

    virtual void write(uint32_t addr, uint32_t data) = 0;
    virtual uint32_t read(uint32_t addr) = 0;
    virtual uint32_t readBRAM(unsigned int) = 0;
    virtual void clearBRAM() = 0;


  };
  
}

#define IMPLEMENT_LINKCAPTURE_LOADER(CLASS,NAME) extern "C" { linkcapture::LinkCapture* linkcapture_make_ ## NAME () { return new CLASS (); } }

#endif //linkcapture_LinkCapture_hh_included
