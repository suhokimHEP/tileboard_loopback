COREINC=../../core/include

ifneq ($(words $(wildcard make.local)),0)
include make.local
endif

ifneq ($(words $(wildcard ../make.vars)),0)
include ../make.vars
endif

SEARCHDIRS=-I${COREINC}

# variables

LINKER       := g++
DEPENDFLAGS  := -O3 -Wall -Wno-address ${SEARCHDIRS} -fPIC -g
TOUCHHEADERS := ${MYCODEDIR}/*.h

# C

CC     := gcc
CCFLAGS  = ${DEPENDFLAGS}

# C++

CXX      := g++
#CROSS_COMPILER:=arm-linux-gnueabihf-
#CROSS_COMPILER:=aarch64-linux-gnu-
CXXFLAGS  = ${DEPENDFLAGS}

build/%.o : %.cc
	$(CROSS_COMPILER)${CXX} ${CPPFLAGS} -c $< -o $@ ${CXXFLAGS}

# C preprocessor (C, C++, FORTRAN)

CPPFLAGS = -fPIC 

# linker

LOADLIBES :=
LDFLAGS    = 

all: build libHDLCzynqMP.so 

libHDLCzynqMP.so: build/HDLCzynqMP.o build/axi.o
	$(CROSS_COMPILER)g++ -shared -Wl,-soname,$@ -o $@ $^ ${LDFLAGS} ${LOADLIBES}


build:
	mkdir -p build
