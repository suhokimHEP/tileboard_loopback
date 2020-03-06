#ifndef hgcfc_FastControlCommands_hh_included
#define hgcfc_FastControlCommands_hh_included 1

#include <stdint.h>

namespace hgcfc {

  /** Constants related to the registers */
  
  /// Registers
  static const uint8_t  FC_CONTROL_REGISTER             = 0;
  static const uint8_t  FC_ORBITSYNC_BX_REGISTER        = 1;
  static const uint8_t  FC_CALIBREQ_BX_REGISTER         = 2;      
  static const uint8_t  FC_CALIBREQ_PRESCALE_REGISTER   = 3;
  static const uint8_t  FC_L1A_GEN_A                    = 4;
  static const uint8_t  FC_L1A_GEN_B                    = 5;  

  /// Control register
  static const uint32_t FC_CTL_ENABLE_FASTCONTROL_BIT         = 0;
  static const uint32_t FC_CTL_FORCE_IDLES_BIT                = 1;
  static const uint32_t FC_CTL_ENABLE_ORBITSYNC_BIT           = 2;
  static const uint32_t FC_CTL_ENABLE_CALIBREQ_BIT            = 3;
  static const uint32_t FC_CTL_ENABLE_CALIBL1A_BIT            = 4;
  static const uint32_t FC_CTL_ENABLE_L1AGEN_A_BIT            = 5;
  static const uint32_t FC_CTL_ENABLE_L1AGEN_B_BIT            = 6;
  static const uint32_t FC_CTL_ONETIME_CALIBREQ               = 16;
  static const uint32_t FC_CTL_ONETIME_ORBITCOUNTRESET        = 17;
  static const uint32_t FC_CTL_ONETIME_LINKRESET              = 18;
  static const uint32_t FC_CTL_ONETIME_DAQRESYNC              = 19;
  static const uint32_t FC_CTL_ONETIME_L1A_A                  = 20;
  static const uint32_t FC_CTL_ONETIME_L1A_B                  = 21;
  static const uint32_t FC_CTL_ONETIME_INTERNAL_TEST          = 27;
  static const uint32_t FC_CTL_ONETIME_RESET_COUNTERS         = 28;

  // FC_ORBITSYNC_BX_REGISTER
  static const uint32_t FC_ORBITSYNC_BX_OFFSET                = 0;
  static const uint32_t FC_ORBITSYNC_BX_MASK                  = 0xFFF;

  // FC_CALIBREQ_BX_REGISTER
  static const uint32_t FC_CALIBREQ_BX_OFFSET                 = 0;
  static const uint32_t FC_CALIBREQ_BX_MASK                   = 0xFFF;
  static const uint32_t FC_CALIBREQ_L1A_BX_OFFSET             = 12;
  static const uint32_t FC_CALIBREQ_L1A_BX_MASK               = 0xFFF;
  static const uint32_t FC_CALIBREQ_REGULAR_L1A_OFFSET        = 24;
  static const uint32_t FC_CALIBREQ_REGULAR_L1A_MASK          = 0x1;
  
  // FC_CALIBREQ_PRESCALE_REGISTER
  static const uint32_t FC_CALIBREQ_PRESCALE_OFFSET           = 0;
  static const uint32_t FC_CALIBREQ_PRESCALE_MASK             = 0xFFFF;

  // FC_L1A_GEN_A  // FC_L1A_GEN_B
  static const uint32_t FC_L1A_GEN_BX_OFFSET                  = 0;
  static const uint32_t FC_L1A_GEN_BX_MASK                    = 0xFFF;
  static const uint32_t FC_L1A_GEN_PRESCALE_OFFSET            = 12;
  static const uint32_t FC_L1A_GEN_PRESCALE_MASK              = 0xFFFFF;


  /// Status registers
  static const uint8_t FC_FIRMWARE_VERSION_REG                = 16;
  static const uint32_t FC_FIRMWARE_VERSION_OFFSET            = 0;
  static const uint32_t FC_FIRMWARE_VERSION_MASK              = 0xFFFF;
  static const uint8_t FC_CURRENT_BX_REG                      = 16;
  static const uint32_t FC_CURRENT_BX_OFFSET                  = 20;
  static const uint32_t FC_CURRENT_BX_MASK                    = 0xFFF;

  static const uint8_t FC_COUNTERS_BASE                       = 17;
  
}

#endif
