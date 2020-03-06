#include "hgcsca/SCA.hh"
#include "hgcsca/Exception.hh"
#include "SCAregisters.h"

namespace hgcsca {

  typedef HDLC::Response Response;

  SCA::SCA(HDLC* link) : communicator_(link) {
    for (int i=0; i<16; i++) i2csetup_[i]=0;
  }
  
  bool SCA::resetChip() {
    return communicator_->reset();
  }

  bool SCA::resetHDLC() {
    return communicator_->resetHDLC();
  }

  static const char* block_names[]={"","SPI","GPIO","I2C[0]","I2C[1]","I2C[2]","I2C[3]","I2C[4]",0,0,
				  "I2C[5]","I2C[6]","I2C[7]","I2C[8]","I2C[9]","I2C[10]","I2C[11]","I2C[12]",0,0,
				    "I2C[13]","I2C[13]","I2C[15]","JTAG","ADC","DAC",0,0};
  
  const char* SCA::ctl_enableName(SCABlock block) {
    return block_names[int(block)];
  }

  std::vector<SCA::SCABlock> SCA::ctl_getenables() {
    std::vector<SCA::SCABlock> enabled;
    uint8_t cr[3];
    cr[0]=communicator_->requestSync(SCA_channel_CTRL,SCA_CTRL_R_CRB,0x2,0).data();
    cr[1]=communicator_->requestSync(SCA_channel_CTRL,SCA_CTRL_R_CRC,0x2,0).data();
    cr[2]=communicator_->requestSync(SCA_channel_CTRL,SCA_CTRL_R_CRD,0x2,0).data();

    for (int i=0; i<3; i++) {
      for (int j=0; j<8; j++) {
	if (cr[i]&(1<<j)) enabled.push_back(SCABlock(i*10+j));
      }
    }
    return enabled;
  }
  
  void SCA::ctl_enable(SCABlock block) {
    int iblock=int(block);
    int wreg=SCA_CTRL_W_CRB+(iblock/10)*2;
    int rreg=SCA_CTRL_R_CRB+(iblock/10)*2;
    uint8_t curval=communicator_->requestSync(SCA_channel_CTRL,rreg,0x2,0).data();
    uint16_t newval=curval|(1<<(iblock%10));
    communicator_->requestSync(SCA_channel_CTRL,wreg,0x3,newval);
  }
  void SCA::ctl_disable(SCABlock block) {
    int iblock=int(block);
    int wreg=SCA_CTRL_W_CRB+(iblock/10)*2;
    int rreg=SCA_CTRL_R_CRB+(iblock/10)*2;
    uint8_t curval=communicator_->requestSync(SCA_channel_CTRL,rreg,0x2,0).data();
    uint16_t newval=curval&(0xFF^(1<<(iblock%10)));
    communicator_->requestSync(SCA_channel_CTRL,wreg,0x3,newval);
  }

  uint32_t SCA::ctl_chipid() {
    uint32_t value=communicator_->requestSync(20,0xd1,0x2,1).data();
    return value;
  }

  uint8_t SCA::ctl_seucount() {
    uint8_t value=communicator_->requestSync(0x13,0xf1,0x2,0).data();
    return value;
  }

  void SCA::ctl_seucountreset() {
    communicator_->requestSync(0x13,0xf0,0x2,0);
  }

  
  static uint16_t i2c_setup_pack(int speed, bool sclAsCMOS, bool addressing, int bytes) {
    return (speed&0x3)|(sclAsCMOS?(0x80):(0x00))|(addressing?(0x100):(0x000))|((bytes&0xF)<<2);
  }


  static void i2c_setup_unpack(uint16_t val, int& speed, bool& sclAsCMOS, bool& addressing, int& bytes) {
    speed=val&0x3;
    sclAsCMOS=(val&0x80)!=0;
    addressing=(val&0x100)!=0;
    bytes=(val>>2)&0xF;
    if (bytes==0) bytes=16;
  }

  void SCA::i2c_configure(int i2cbus, int speed, bool sclAsCMOS, bool addressing) {
    if (i2cbus<0 || i2cbus>15) {
      char msg[100];
      snprintf(msg,100,"Requested I2C bus (%d) out of range",i2cbus);
      throw Exception("IllegalI2CBusException",msg,__FILE__,__LINE__,__FUNCTION__);
    }
    i2csetup_[i2cbus]=i2c_setup_pack(speed,sclAsCMOS,addressing,0);
    uint32_t cfg=i2csetup_[i2cbus]&0xFF;
//    printf("First I2C configure data: 0x%x\n", cfg);
    cfg<<=24; // seems to be the MSB
//    printf("2nd I2C configure data: 0x%x\n", cfg);
    communicator_->requestSync(SCA_channel_I2C_0+i2cbus,SCA_I2C_W_CTRL,0x6,cfg);
  }

  void SCA::i2c_read_configuration(int i2cbus, int& speed, bool& sclAsCMOS, bool& addressing) {
    if (i2cbus<0 || i2cbus>15) {
      char msg[100];
      snprintf(msg,100,"Requested I2C bus (%d) out of range",i2cbus);
      throw Exception("IllegalI2CBusException",msg,__FILE__,__LINE__,__FUNCTION__);
    }
    Response resp=communicator_->requestSync(SCA_channel_I2C_0+i2cbus,SCA_I2C_R_CTRL,0x2,0);
    if (resp.error()) return; 
    uint8_t ctrl=resp.data()>>24;
    i2csetup_[i2cbus]=(i2csetup_[i2cbus]&0x100) | ctrl;
    int dummy;
    i2c_setup_unpack( i2csetup_[i2cbus], speed, sclAsCMOS,addressing, dummy);
  }

  
  void SCA::i2c_status(int i2cbus, bool& success, bool& lvlerr, bool& invalid, bool& noack){
    if (i2cbus<0 || i2cbus>15) {
      char msg[100];
      snprintf(msg,100,"Requested I2C bus (%d) out of range",i2cbus);
      throw Exception("IllegalI2CBusException",msg,__FILE__,__LINE__,__FUNCTION__);
    }
    uint8_t SCA_channel_I2C = i2cbus + SCA_channel_I2C_0;
    Response resp=communicator_->requestSync(SCA_channel_I2C,SCA_I2C_R_STR,0x2,0);
//    printf("Code from i2c status: (0x%x)\n", resp.data());
    uint8_t code=(resp.data()>>24) & 0xFF;
//    printf("Code from i2c status 2nd: (0x%x)\n", code);

    success = ((code >> 2) & 1);
    lvlerr  = ((code >> 3) & 1);
    invalid = ((code >> 5) & 1);
    noack   = ((code >> 6) & 1);
  }

  void SCA::i2c_write_single_byte(int i2cbus, uint16_t i2caddr, uint8_t data) {
    if (i2cbus<0 || i2cbus>15) {
      char msg[100];
      snprintf(msg,100,"Requested I2C bus (%d) out of range",i2cbus);
      throw Exception("IllegalI2CBusException",msg,__FILE__,__LINE__,__FUNCTION__);
    }
    uint8_t SCA_channel_I2C = i2cbus + SCA_channel_I2C_0;
    int speed, bytes;
    bool sclAsCMOS, addressing;
    i2c_setup_unpack(i2csetup_[i2cbus],speed,sclAsCMOS,addressing,bytes);

    uint32_t payload=(uint32_t(i2caddr)<<8)|data;
    
    if (addressing) communicator_->requestSync(SCA_channel_I2C,SCA_I2C_S_10B_W,0x6,payload<<8);
    else communicator_->requestSync(SCA_channel_I2C,SCA_I2C_S_7B_W,0x4,payload);    
  }
  uint8_t SCA::i2c_read_single_byte(int i2cbus, uint16_t i2caddr) {
    if (i2cbus<0 || i2cbus>15) {
      char msg[100];
      snprintf(msg,100,"Requested I2C bus (%d) out of range",i2cbus);
      throw Exception("IllegalI2CBusException",msg,__FILE__,__LINE__,__FUNCTION__);
    }
    uint8_t SCA_channel_I2C = i2cbus + SCA_channel_I2C_0;
    int speed, bytes;
    bool sclAsCMOS, addressing;
    i2c_setup_unpack(i2csetup_[i2cbus],speed,sclAsCMOS,addressing,bytes);
    
    uint32_t payload=(uint32_t(i2caddr));
    
    if (addressing) {
      Response resp=communicator_->requestSync(SCA_channel_I2C,SCA_I2C_S_10B_R,0x6,payload);
      return (resp.data()>>16) & 0xFF;
    } else {
      Response resp=communicator_->requestSync(SCA_channel_I2C,SCA_I2C_S_7B_R,0x4,payload<<8);
      return (resp.data()>>16) & 0xFF;
    }
  }
  
  
  void SCA::i2c_write(int i2cbus, uint16_t i2caddr, const std::vector<uint8_t>& data){
    if (i2cbus<0 || i2cbus>15) {
      char msg[100];
      snprintf(msg,100,"Requested I2C bus (%d) out of range",i2cbus);
      throw Exception("IllegalI2CBusException",msg,__FILE__,__LINE__,__FUNCTION__);
    }
    if (i2cbus<0 || i2cbus>15) return;
    uint8_t SCA_channel_I2C = i2cbus + SCA_channel_I2C_0;
    uint32_t data0=0;
    uint32_t data1=0;
    uint32_t data2=0;
    uint32_t data3=0;

    //printf("data.size(): %x\n", data.size());
    //for(int i=0; i<data.size(); i++){
    //   printf("data[i]: %x", data[i]);
    //}    

    if(data.size()>0) data0|=uint32_t(data[0])<<24;
    if(data.size()>1) data0|=uint32_t(data[1])<<16;
    if(data.size()>2) data0|=uint32_t(data[2])<<8;
    if(data.size()>3) data0|=uint32_t(data[3])<<0;
    if(data.size()>4) data1|=uint32_t(data[4])<<24;
    if(data.size()>5) data1|=uint32_t(data[5])<<16;
    if(data.size()>6) data1|=uint32_t(data[6])<<8;
    if(data.size()>7) data1|=uint32_t(data[7])<<0;
    if(data.size()>8) data2|=uint32_t(data[8])<<24;
    if(data.size()>9) data2|=uint32_t(data[9])<<16;
    if(data.size()>10) data2|=uint32_t(data[10])<<8;
    if(data.size()>11) data2|=uint32_t(data[11])<<0;
    if(data.size()>12) data3|=uint32_t(data[12])<<24;
    if(data.size()>13) data3|=uint32_t(data[13])<<16;
    if(data.size()>14) data3|=uint32_t(data[14])<<8;
    if(data.size()>15) data3|=uint32_t(data[15])<<0;

    //printf("data0: %x\n", data0);

    if (data.size()>0) communicator_->requestSync(SCA_channel_I2C,SCA_I2C_W_DATA0,0x6,data0);
    if (data.size()>3) communicator_->requestSync(SCA_channel_I2C,SCA_I2C_W_DATA1,0x6,data1);
    if (data.size()>7) communicator_->requestSync(SCA_channel_I2C,SCA_I2C_W_DATA2,0x6,data2);
    if (data.size()>11) communicator_->requestSync(SCA_channel_I2C,SCA_I2C_W_DATA3,0x6,data3);

    int speed, bytes;
    bool sclAsCMOS, addressing;
    i2c_setup_unpack(i2csetup_[i2cbus],speed,sclAsCMOS,addressing,bytes);
    i2csetup_[i2cbus]=i2c_setup_pack(speed,sclAsCMOS,addressing,data.size());
    
    communicator_->requestSync(SCA_channel_I2C,SCA_I2C_W_CTRL,6,uint32_t(i2csetup_[i2cbus]&0xFF)<<24);
    if (addressing) communicator_->requestSync(SCA_channel_I2C,SCA_I2C_M_10B_W,0x4,i2caddr);
    else communicator_->requestSync(SCA_channel_I2C,SCA_I2C_M_7B_W,0x3,i2caddr);
  }

  void SCA::i2c_read_initiate(int i2cbus, uint16_t i2caddr, uint8_t len){
    if (i2cbus<0 || i2cbus>15) {
      char msg[100];
      snprintf(msg,100,"Requested I2C bus (%d) out of range",i2cbus);
      throw Exception("IllegalI2CBusException",msg,__FILE__,__LINE__,__FUNCTION__);
    }
    uint8_t SCA_channel_I2C = i2cbus + SCA_channel_I2C_0;
    
    int speed, bytes;
    bool sclAsCMOS, addressing;
    i2c_setup_unpack(i2csetup_[i2cbus],speed,sclAsCMOS,addressing,bytes);
    i2csetup_[i2cbus]=i2c_setup_pack(speed,sclAsCMOS,addressing,len);
    
    communicator_->requestSync(SCA_channel_I2C,SCA_I2C_W_CTRL,6,uint32_t(i2csetup_[i2cbus]&0xFF)<<24);

    if (addressing) communicator_->requestSync(SCA_channel_I2C,SCA_I2C_M_10B_R,0x6,uint32_t(i2caddr)<<16);
    else communicator_->requestSync(SCA_channel_I2C,SCA_I2C_M_7B_R,0x6,uint32_t(i2caddr)<<24);
    
  }

  std::vector<uint8_t> SCA::i2c_read(int i2cbus){
    if (i2cbus<0 || i2cbus>15) {
      char msg[100];
      snprintf(msg,100,"Requested I2C bus (%d) out of range",i2cbus);
      throw Exception("IllegalI2CBusException",msg,__FILE__,__LINE__,__FUNCTION__);
    }
    
    int speed, bytes;
    bool sclAsCMOS, addressing;
    i2c_setup_unpack(i2csetup_[i2cbus],speed,sclAsCMOS,addressing,bytes);

//    printf("number of bytes: 0x%x",bytes);
     
    uint8_t SCA_channel_I2C = i2cbus + SCA_channel_I2C_0;
    std::vector<uint8_t> data;
    // ordinering here different than expected, but matches hardware behavior...

    Response resp0=communicator_->requestSync(SCA_channel_I2C,SCA_I2C_R_DATA3,0x6,0);
    for(int i=0; i < 4 && i<bytes; i++){
      data.push_back((resp0.data() >> ((3-i)*8)) & 0xFF);
    }
    if (bytes>4) {
      Response resp1=communicator_->requestSync(SCA_channel_I2C,SCA_I2C_R_DATA2,0x2,0);
      for(int i=0; i < 4 && i+4<bytes; i++){
	data.push_back((resp1.data() >> ((3-i)*8)) & 0xFF);
      }
      if (bytes>8) {
	Response resp2=communicator_->requestSync(SCA_channel_I2C,SCA_I2C_R_DATA1,0x2,0);
	for(int i=0; i < 4 && i+8<bytes; i++){
	  data.push_back((resp2.data() >> ((3-i)*8)) & 0xFF);
	}
	if (bytes>12) {
	  Response resp3=communicator_->requestSync(SCA_channel_I2C,SCA_I2C_R_DATA0,0x2,0);
	  for(int i=0; i < 4 && i+12<bytes; i++){
	    data.push_back((resp3.data() >> ((3-i)*8)) & 0xFF);
	  }
	}
      }
    }
    
    return data;
  }
  
  void SCA::gpio_setwrite(int bit) {
    uint32_t current=gpio_get_direction_all();
    current|=(1<<bit);
    gpio_set_direction_all(current);
  }
  
  void SCA::gpio_setread(int bit) {
    uint32_t current=gpio_get_direction_all();
    current&=0xFFFFFFFFu^(1<<bit);
    gpio_set_direction_all(current);
  }
  
  bool SCA::gpio_iswrite(int bit) {
    return gpio_get_direction_all()&(1<<bit);
  }

  void SCA::gpio_set_direction_all(uint32_t bits) {
    communicator_->requestSync(SCA_channel_GPIO,SCA_GPIO_W_DIRECTION,0x6,bits);
  }

  uint32_t SCA::gpio_get_direction_all() {
    Response resp=communicator_->requestSync(SCA_channel_GPIO,SCA_GPIO_R_DIRECTION,0x2,0);
    return resp.data();
  }

  void SCA::gpio_set(int bit) {
    uint32_t current=gpio_read_write();
    current|=(1<<bit);
    gpio_write_all(current);    
  }
  void SCA::gpio_clear(int bit) {
    uint32_t current=gpio_read_write();
    current&=0xFFFFFFFFu^(1<<bit);
    gpio_write_all(current);
  }
  bool SCA::gpio_is_set(int bit) {
    return (gpio_read_all())&(1<<bit);
  }
  void SCA::gpio_write_all(uint32_t bits) {
    communicator_->requestSync(SCA_channel_GPIO,SCA_GPIO_W_DATAOUT,0x6,bits);
  }

  uint32_t SCA::gpio_read_write() {
    Response resp=communicator_->requestSync(SCA_channel_GPIO,SCA_GPIO_R_DATAOUT,0x2,0);
    return resp.data();
  }
  uint32_t SCA::gpio_read_all() {
    Response resp=communicator_->requestSync(SCA_channel_GPIO,SCA_GPIO_R_DATAIN,0x2,0);
    return resp.data();
  }

  uint16_t SCA::adc_read(int channel) {
    communicator_->requestSync(SCA_channel_ADC,SCA_ADC_W_MUX,0x6,channel);
    Response resp=communicator_->requestSync(SCA_channel_ADC,SCA_ADC_GO,0x6,1);
    return resp.data()&0xFFF;
  }

  uint32_t SCA::adc_current_source_enable_read() {
    Response resp=communicator_->requestSync(SCA_channel_ADC,SCA_ADC_R_CURR,0x2,0);
    return resp.data();
  }

  void SCA::adc_current_source_enable_write(uint32_t mask) {
    communicator_->requestSync(SCA_channel_ADC,SCA_ADC_W_CURR,0x6,mask);
  }

  void SCA::dac_write(int channel, uint8_t val) {
    if (channel<0 || channel>3) return;
    uint32_t data=val;
    data<<=8;
    communicator_->requestSync(SCA_channel_DAC,SCA_DAC_W_A+16*channel,0x4,data);
  }

  uint8_t SCA::dac_read(int channel) {
    if (channel<0 || channel>3) return 0;
    Response resp=communicator_->requestSync(SCA_channel_DAC,SCA_DAC_R_A+16*channel,0x2,0);
    return (resp.data()>>24)&0xFF;
  }
 
}
