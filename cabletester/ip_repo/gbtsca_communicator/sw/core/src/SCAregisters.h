#ifndef SCAregisters_included
#define SCAregisters_included 1

//////////////////////////////////////////////////////////////////
/// SCA Channels
//////////////////////////////////////////////////////////////////
const uint8_t SCA_channel_CTRL             = 0x00;
const uint8_t SCA_channel_SPI              = 0x01;
const uint8_t SCA_channel_GPIO             = 0x02;
const uint8_t SCA_channel_I2C_0            = 0x03;
const uint8_t SCA_channel_I2C_1            = 0x04;
const uint8_t SCA_channel_I2C_2            = 0x05;
const uint8_t SCA_channel_I2C_3            = 0x06;
const uint8_t SCA_channel_I2C_4            = 0x07;
const uint8_t SCA_channel_I2C_5            = 0x08;
const uint8_t SCA_channel_I2C_6            = 0x09;
const uint8_t SCA_channel_I2C_7            = 0x0A;
const uint8_t SCA_channel_I2C_8            = 0x0B;
const uint8_t SCA_channel_I2C_9            = 0x0C;
const uint8_t SCA_channel_I2C_10           = 0x0D;
const uint8_t SCA_channel_I2C_11           = 0x0E;
const uint8_t SCA_channel_I2C_12           = 0x0F;
const uint8_t SCA_channel_I2C_13           = 0x10;
const uint8_t SCA_channel_I2C_14           = 0x11;
const uint8_t SCA_channel_I2C_15           = 0x12;
const uint8_t SCA_channel_JTAG             = 0x13;
const uint8_t SCA_channel_ADC              = 0x14;
const uint8_t SCA_channel_DAC              = 0x15;


//////////////////////////////////////////////////////////////////
/// SCA CTRL Registers
//////////////////////////////////////////////////////////////////
const uint8_t SCA_CTRL_W_CRB               = 0x02;
const uint8_t SCA_CTRL_R_CRB               = 0x03;
const uint8_t SCA_CTRL_W_CRC               = 0x04;
const uint8_t SCA_CTRL_R_CRC               = 0x05;
const uint8_t SCA_CTRL_W_CRD               = 0x06;
const uint8_t SCA_CTRL_R_CRD               = 0x07;

//////////////////////////////////////////////////////////////////
/// SCA GPIO Registers
//////////////////////////////////////////////////////////////////
const uint8_t SCA_GPIO_W_DATAOUT           = 0x10;
const uint8_t SCA_GPIO_R_DATAOUT           = 0x11;
const uint8_t SCA_GPIO_R_DATAIN            = 0x01;
const uint8_t SCA_GPIO_W_DIRECTION         = 0x20;
const uint8_t SCA_GPIO_R_DIRECTION         = 0x21;

//////////////////////////////////////////////////////////////////
/// SCA I2C Registers
//////////////////////////////////////////////////////////////////
const uint8_t SCA_I2C_W_CTRL               = 0x30;
const uint8_t SCA_I2C_R_CTRL               = 0x31;
const uint8_t SCA_I2C_R_STR                = 0x11;
const uint8_t SCA_I2C_W_MASK               = 0x20;
const uint8_t SCA_I2C_R_MASK               = 0x21;
const uint8_t SCA_I2C_W_DATA0              = 0x40;
const uint8_t SCA_I2C_R_DATA0              = 0x41;
const uint8_t SCA_I2C_W_DATA1		   = 0x50;
const uint8_t SCA_I2C_R_DATA1              = 0x51;
const uint8_t SCA_I2C_W_DATA2              = 0x60;
const uint8_t SCA_I2C_R_DATA2              = 0x61;
const uint8_t SCA_I2C_W_DATA3              = 0x70;
const uint8_t SCA_I2C_R_DATA3              = 0x71;
const uint8_t SCA_I2C_S_7B_W               = 0x82;
const uint8_t SCA_I2C_S_7B_R               = 0x86;
const uint8_t SCA_I2C_S_10B_W              = 0x8A;
const uint8_t SCA_I2C_S_10B_R              = 0x8E;
const uint8_t SCA_I2C_M_7B_W               = 0xDA;
const uint8_t SCA_I2C_M_7B_R               = 0xDE;
const uint8_t SCA_I2C_M_10B_W              = 0xE2;
const uint8_t SCA_I2C_M_10B_R              = 0xE6;
const uint8_t SCA_I2C_RMW_AND              = 0xFF;//Not defined in documentation
const uint8_t SCA_I2C_RMW_OR               = 0xC6;
const uint8_t SCA_I2C_RMW_XOR              = 0xCA;


//////////////////////////////////////////////////////////////////
/// SCA ADC Registers
//////////////////////////////////////////////////////////////////
const uint8_t SCA_ADC_GO                   = 0x02;
const uint8_t SCA_ADC_W_MUX                = 0x50;
const uint8_t SCA_ADC_R_MUX                = 0x51;
const uint8_t SCA_ADC_W_CURR               = 0x60;
const uint8_t SCA_ADC_R_CURR               = 0x61;
const uint8_t SCA_ADC_W_GAIN               = 0x10;
const uint8_t SCA_ADC_R_GAIN               = 0x11;
const uint8_t SCA_ADC_R_DATA               = 0x21;
const uint8_t SCA_ADC_R_RAW                = 0x31;
const uint8_t SCA_ADC_R_OFS                = 0x41;

//////////////////////////////////////////////////////////////////
/// SCA DAC Registers
//////////////////////////////////////////////////////////////////
const uint8_t SCA_DAC_W_A                  = 0x10;
const uint8_t SCA_DAC_R_A                  = 0x11;
const uint8_t SCA_DAC_W_B                  = 0x20;
const uint8_t SCA_DAC_R_B                  = 0x21;
const uint8_t SCA_DAC_W_C                  = 0x30;
const uint8_t SCA_DAC_R_C                  = 0x31;
const uint8_t SCA_DAC_W_D                  = 0x40;
const uint8_t SCA_DAC_R_D                  = 0x41;



#endif // SCAregisters_included
