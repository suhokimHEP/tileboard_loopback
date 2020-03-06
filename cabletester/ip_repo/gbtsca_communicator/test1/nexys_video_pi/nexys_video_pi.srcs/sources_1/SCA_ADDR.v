localparam SCA_FIRMWARE_VERSION = (10'h101); // 16 bits
localparam SCA_CONSTANT0        = (10'h102); // constant 0xDEAD
localparam SCA_CONSTANT1        = (10'h103); // constant 0xBEEF
localparam SCA_DUMMY_REG0       = (10'h104); // 16 bits, does nothing
localparam SCA_DUMMY_REG1       = (10'h105); // 16 bits, does nothing

localparam SCA_GPIO8       = (10'h120); // read-only, 1 bit
localparam SCA_GPIO9       = (10'h121); // read-only, 1 bit
localparam SCA_GPIO10      = (10'h122); // read-only, 1 bit
localparam SCA_GPIO11      = (10'h123); // read-only, 1 bit
localparam SCA_GPIO12      = (10'h124); // read-only, 1 bit
localparam SCA_SW3         = (10'h125); // read-only, 1 bit
localparam SCA_SW4         = (10'h126); // read-only, 1 bit
localparam SCA_GPIO0       = (10'h127); // 1 bit
localparam SCA_GPIO1       = (10'h128); // 1 bit
localparam SCA_GPIO2       = (10'h129); // 1 bit
localparam SCA_LED3        = (10'h12A); // 1 bit
localparam SCA_LED4        = (10'h12B); // 1 bit
localparam SCA_AUX_DISABLE = (10'h12C); // 1 bit
localparam SCA_RESETB      = (10'h12D); // 1 bit

localparam SCA_ELINK_ENABLE = (10'h130); // 1 bit
localparam SCA_SEND_PACKET1 = (10'h131); // write-only, 1 bit
localparam SCA_SEND_PACKET2 = (10'h132); // write-only, 1 bit
localparam SCA_SEND_PACKET3 = (10'h133); // write-only, 1 bit

localparam SCA_BITS_PACKET0 = (10'h140); // 16 bitS
localparam SCA_BITS_PACKET1 = (10'h141); // 16 bitS
localparam SCA_BITS_PACKET2 = (10'h142); // 16 bitS
localparam SCA_BITS_PACKET3 = (10'h143); // 16 bitS

localparam SCA_TX_PACKET0   = (10'h150); // consecutive 16 bit words
localparam SCA_RX_PACKET0   = (10'h160); // read-only, consecutive 16 bit words

localparam SCA_TX_PACKET1   = (10'h170); // consecutive 16 bit words
localparam SCA_RX_PACKET1   = (10'h180); // read-only, consecutive 16 bit words

localparam SCA_TX_PACKET2   = (10'h190); // consecutive 16 bit words
localparam SCA_RX_PACKET2   = (10'h1A0); // read-only, consecutive 16 bit words

localparam SCA_TX_PACKET3   = (10'h1B0); // consecutive 16 bit words
localparam SCA_RX_PACKET3   = (10'h1C0); // read-only, consecutive 16 bit words

localparam SCA_TLA_PTR      = (10'h140); //
localparam SCA_TLA_WINDOW   = (10'h141); //

localparam SCA_TX_BLOCK     = (10'h150); // "overloaded", sort-of
localparam SCA_TX_EN_LEN    = (10'h157);
localparam SCA_RX_BLOCK     = (10'h180); // "overloaded", sort-of

localparam SCA_RX_BLOCK2    = (10'h1A0); // "overloaded", sort-of

