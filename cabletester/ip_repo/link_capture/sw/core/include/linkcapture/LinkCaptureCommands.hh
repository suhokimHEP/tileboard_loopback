#ifndef linkcapture_LinkCaptureCommands_hh_included
#define linkcapture_LinkCaptureCommands_hh_included 1

#include <stdint.h>

namespace linkcapture {

    /** Constants related to the registers */
  
    /// Registers

    /// inputs 
    static const uint32_t DELAY_IN         = 0x000*0x4;
    static const uint32_t ALIGN_PATTERN    = 0x001*0x4;
    static const uint32_t CAPTURE_MODE     = 0x002*0x4;
    static const uint32_t L1AOFFSET_OR_BX  = 0x003*0x4;
    static const uint32_t AQUIRE           = 0x004*0x4;
    static const uint32_t AQUIRE_LENGTH    = 0x005*0x4;
    static const uint32_t ALIGN_REQUEST    = 0x006*0x4;
    static const uint32_t RESET            = 0x007*0x4;

    /// outputs 
    static const uint32_t STATUS_REGISTER  = 0x011*0x4;
    static const uint32_t DELAY_OUT        = 0x012*0x4;
    static const uint32_t LINK_ALIGNED_CNT = 0x013*0x4;
    static const uint32_t LINK_ERROR_CNT   = 0x014*0x4;
    static const uint32_t ALIGN_STATE      = 0x015*0x4;

    /// Status register bits 
    static const uint32_t SR_LINK_ALIGNED  = 0x01;
    static const uint32_t SR_DELAY_READY   = 0x02;
    static const uint32_t SR_WAITFORTRIG   = 0x04;
    static const uint32_t SR_WRITING       = 0x08;
}

#endif
