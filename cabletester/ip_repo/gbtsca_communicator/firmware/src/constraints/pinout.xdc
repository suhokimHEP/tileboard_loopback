set_property PACKAGE_PIN D7 [get_ports {fc_clk_o_p}]
set_property PACKAGE_PIN D6 [get_ports {fc_clk_o_n}]
set_property IOSTANDARD DIFF_SSTL12 [get_ports {fc_clk_*}]

set_property PACKAGE_PIN C9 [get_ports {fc_sig_o_p}]
set_property PACKAGE_PIN B9 [get_ports {fc_sig_o_n}]
set_property IOSTANDARD DIFF_SSTL12 [get_ports {fc_sig_*}]

set_property PACKAGE_PIN AE9 [get_ports {SCA_MOSI_P}]
set_property PACKAGE_PIN AE8 [get_ports {SCA_MOSI_N}]
#set_property PACKAGE_PIN AE9 [get_ports {SCA_MISO_P}]
#set_property PACKAGE_PIN AE8 [get_ports {SCA_MISO_N}]
set_property PACKAGE_PIN AF7 [get_ports {SCA_CLK_P}]
set_property PACKAGE_PIN AF6 [get_ports {SCA_CLK_N}]
set_property PACKAGE_PIN AC9 [get_ports {SCA_MISO_P}]
set_property PACKAGE_PIN AD9 [get_ports {SCA_MISO_N}]
#set_property PACKAGE_PIN AC9 [get_ports {SCA_MOSI_P}]
#set_property PACKAGE_PIN AD9 [get_ports {SCA_MOSI_N}]

set_property IOSTANDARD DIFF_SSTL12 [get_ports {SCA_*}]

set_property PACKAGE_PIN AH4 [get_ports {RESETB}]
set_property IOSTANDARD LVCMOS12 [get_ports RESETB]

set_property IOSTANDARD LVCMOS12 [get_ports {HGCROC_SCL_0}]
set_property DRIVE 8 [get_ports {HGCROC_SCL_0}]
set_property PACKAGE_PIN AH1 [get_ports {HGCROC_SCL_0}]
set_property IOSTANDARD LVCMOS12 [get_ports {HGCROC_SDA_0}]
set_property DRIVE 8 [get_ports {HGCROC_SDA_0}]
set_property PACKAGE_PIN AH2 [get_ports {HGCROC_SDA_0}]


#set_property PACKAGE_PIN [get_ports { tileboard_power_enable }]
#set_property IOSTANDARD LVCMOS12 [get_ports { tileboard_power_enable }]

