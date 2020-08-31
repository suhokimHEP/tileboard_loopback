set_property PACKAGE_PIN AF5 [get_ports {rj45_ttl[0]}]; # MISC0_N
set_property PACKAGE_PIN AE5 [get_ports {rj45_ttl[1]}]; # MISC0_P
set_property PACKAGE_PIN AD4 [get_ports {rj45_ttl[2]}]; # MISC1_N
set_property PACKAGE_PIN AD5 [get_ports {rj45_ttl[3]}]; # MISC1_P
set_property PACKAGE_PIN AH9 [get_ports {rj45_ttl[4]}]; # MISC2_N
set_property PACKAGE_PIN AG9 [get_ports {rj45_ttl[5]}]; # MISC2_P
set_property PACKAGE_PIN AG8 [get_ports {rj45_ttl[6]}]; # MISC3_N
set_property PACKAGE_PIN AF8 [get_ports {rj45_ttl[7]}]; # MISC3_P

set_property IOSTANDARD LVCMOS12 [get_ports {rj45_ttl[*]}];

set_property PACKAGE_PIN W8 [get_ports {misc_data[0]}]; # A1
set_property PACKAGE_PIN Y8 [get_ports {misc_data[1]}]; # A2
set_property PACKAGE_PIN R7 [get_ports {misc_data[2]}]; # A3
set_property PACKAGE_PIN T7 [get_ports {misc_data[3]}]; # A4
set_property PACKAGE_PIN U9 [get_ports {misc_data[4]}]; # A5
set_property PACKAGE_PIN V9 [get_ports {misc_data[5]}]; # A6
set_property PACKAGE_PIN R6 [get_ports {misc_data[6]}]; # A7
set_property PACKAGE_PIN T6 [get_ports {misc_data[7]}]; # A8

set_property PACKAGE_PIN U8 [get_ports {misc_dir[0]}]; # DIR1
set_property PACKAGE_PIN V8 [get_ports {misc_dir[1]}]; # DIR2
set_property PACKAGE_PIN N9 [get_ports {misc_dir[2]}]; # DIR3
set_property PACKAGE_PIN N8 [get_ports {misc_dir[3]}]; # DIR4
set_property PACKAGE_PIN K4 [get_ports {misc_dir[4]}]; # DIR5
set_property PACKAGE_PIN K3 [get_ports {misc_dir[5]}]; # DIR6
set_property PACKAGE_PIN L7 [get_ports {misc_dir[6]}]; # DIR7
set_property PACKAGE_PIN L6 [get_ports {misc_dir[7]}]; # DIR8

set_property PACKAGE_PIN K1 [get_ports {misc_switches[0]}]; # DIP1
set_property PACKAGE_PIN L1 [get_ports {misc_switches[1]}]; # DIP2
set_property PACKAGE_PIN N7 [get_ports {misc_switches[2]}]; # DIP3
set_property PACKAGE_PIN N6 [get_ports {misc_switches[3]}]; # DIP4
set_property PACKAGE_PIN AC2 [get_ports {misc_switches[4]}]; # BUTTON

set_property IOSTANDARD LVCMOS12 [get_ports {misc_*}];

set_property PACKAGE_PIN AH8 [get_ports {heartbeat_led}]; # HEARTBEAT

set_property IOSTANDARD LVCMOS12 [get_ports {heartbeat_led}];

set_property PACKAGE_PIN H7 [get_ports {sd_led[0]}]; #SD_LED0 
set_property PACKAGE_PIN J7 [get_ports {sd_led[4]}]; #SD_LED0_A 
set_property PACKAGE_PIN M8 [get_ports {sd_led[1]}]; #SD_LED1 
set_property PACKAGE_PIN L8 [get_ports {sd_led[5]}]; #SD_LED1_A 
set_property PACKAGE_PIN L2 [get_ports {sd_led[2]}]; #SD_LED2 
set_property PACKAGE_PIN L3 [get_ports {sd_led[6]}]; #SD_LED2_A 
set_property PACKAGE_PIN L5 [get_ports {sd_led[3]}]; #SD_LED3 
set_property PACKAGE_PIN M6 [get_ports {sd_led[7]}]; #SD_LED3_A 

set_property IOSTANDARD LVCMOS12 [get_ports {sd_led[*]}];


