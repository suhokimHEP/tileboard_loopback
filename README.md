##tileboard\_loopback
 For tileboard\_loopback
## Overview, History, and Introduction
```
 #This tileboard\_loopback repo is updated on 2020-20.
 #This repo generates FPGA bitstream to test performance of cables connecting TB - WB for Phase 2 of LHC (HL-LHC).
```
## Set up the area
```
# To generate the FPGA bitstream, you need Xilinx-VIVADO, a HDL tool.
# MAKE SURE TO DOWNLOAD VIVADO version 19.02 and afterwards with VITIS.
# Version of 18.03 and past will NOT work with this repo due to lack of IPs.
# After downloading VIVADO, clone the repo.

git clone https://github.com/suhokimHEP/tileboard_loopback.git;
```

## Inversion
```
  # Before creating BD, make sure the differential signal's inversions are set-up as desired for your bitstream
  # They can be accessed at L.838 of loopback_capture/vivado/loopback_capture.srcs/sources_1/new/loopback_capture_AXI.v
  # From left to right corresponds to prbs_bytegenerator[8:0]
```

## TCL console
```
 # After proper set-up of the inversion,
 # Use the following commads in TCL console of VIVADO to create Basic Block-design.

cd [directory where you cloned the repository /cabletester]
source scripts/create_project.tcl

```
## XCD Constraint file

 # For UMinn TB's FPGA of Xilinx Zynq UltraScale+ MPSoC (xczu2cg-sfvc784) with QTH loopback, default file, tileboard_loopback/cabletester/src/constraints/pinout.xdc should be used.
 # To edit its XDC for QSH, please replace the pinout.xdc with tileboard_loopback/cabletester/src/constraints/QSH/pinout.xdc
 # Spreadsheet for FPGA's pin name, pin code (for XDC file), and UMinn Tileboard's leg assignment are in tileboard_loopback/cabletester/src/constraints/xczu2cgsfvc784pkg.csv

```


## Presentations
``` 
 # Past presentation pdf files are located under directory presentations/ for more information.
 # They contain progress and update on work done for Cabletester (with QSH loopback) by Suho Kim.
 # Improvement can be achieved in areas of a) creating new adaptor board to check more loopback, b) Testing loopback with GBTSCA not to lose its signals, etc.
```  
