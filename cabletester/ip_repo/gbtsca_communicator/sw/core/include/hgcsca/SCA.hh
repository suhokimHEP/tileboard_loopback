#ifndef hgcsca_SCA_hh_included
#define hgcsca_SCA_hh_included 1

#include <stdint.h>
#include <vector>
#include "hgcsca/HDLC.hh"

namespace hgcsca {

  /** \class Concrete interface which provides a useful way to interact
          with the GBTSCA.
  */ 
  class SCA {
  public:
    SCA(HDLC* link);
    /// Reset the Chip (good to do when initiating communication)
    bool resetChip();
    /// Reset the HDLC link (good to do when initiating communication)
    bool resetHDLC();

    /////////////////////////////////////////////////////////////////
    /// Sub-blocks (control register)
    /////////////////////////////////////////////////////////////////
    enum SCABlock { sca_spi=  1,  sca_gpio= 2,  sca_i2c0= 3,  sca_i2c1=4,   sca_i2c2=  5,
		     sca_i2c3= 6,  sca_i2c4= 7,  sca_i2c5=10,  sca_i2c6=11,  sca_i2c7= 12,
		     sca_i2c8=13,  sca_i2c9=14,  sca_i2c10=15, sca_i2c11=16, sca_i2c12=17, 
		    sca_i2c13=20, sca_i2c14=21, sca_i2c15=22, sca_jtag= 23, sca_adc=  24,
                    sca_dac  =25};
    const char* ctl_enableName(SCABlock block);
    std::vector<SCABlock> ctl_getenables();
    void ctl_enable(SCABlock block);
    void ctl_disable(SCABlock block);
    uint32_t ctl_chipid();
    uint8_t ctl_seucount();
    void ctl_seucountreset();
    
    /////////////////////////////////////////////////////////////////
    /// Actions related to I2C
    /////////////////////////////////////////////////////////////////
    void i2c_configure(int i2cbus, int speed, bool sclAsCMOS, bool addressing10);
    void i2c_read_configuration(int i2cbus, int& speed, bool& sclAsCMOS, bool& addressing10);
    void i2c_write(int i2cbus, uint16_t i2caddr, const std::vector<uint8_t>& data);
    void i2c_status(int i2cbus, bool& success, bool& lvlerr, bool& invalid, bool& noack);
    void i2c_read_initiate(int i2cbus, uint16_t i2caddr, uint8_t len); 
    std::vector<uint8_t> i2c_read(int i2cbus);
    void i2c_write_single_byte(int i2cbus, uint16_t i2caddr, uint8_t data);
    uint8_t i2c_read_single_byte(int i2cbus, uint16_t i2caddr);
    
    
    /////////////////////////////////////////////////////////////////
    /// Actions related to GPIO
    /////////////////////////////////////////////////////////////////
    void gpio_setwrite(int bit);
    void gpio_setread(int bit);
    void gpio_set_direction_all(uint32_t bits);
    bool gpio_iswrite(int bit);
    bool gpio_isread(int bit) { return !gpio_iswrite(bit); }
    uint32_t gpio_get_direction_all();

    void gpio_set(int bit);
    void gpio_clear(int bit);
    bool gpio_is_set(int bit);
    void gpio_write_all(uint32_t bits);
    uint32_t gpio_read_write(); // read the 'data out' register
    uint32_t gpio_read_all();

    /////////////////////////////////////////////////////////////////
    /// Actions related to ADC and DAC
    /////////////////////////////////////////////////////////////////
    uint16_t adc_read(int channel);
    uint8_t dac_read(int channel);
    void dac_write(int channel, uint8_t val);
    uint32_t adc_current_source_enable_read();
    void adc_current_source_enable_write(uint32_t val);
    
    
  private:
    HDLC* communicator_;
    uint16_t i2csetup_[16];
  };
  
}

#endif // hgcsca_HDLC_hh_included
