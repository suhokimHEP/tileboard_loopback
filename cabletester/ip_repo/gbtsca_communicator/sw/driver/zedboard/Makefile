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
DEPENDFLAGS  := -O3 -Wall -Wno-address ${SEARCHDIRS} -fPIC
TOUCHHEADERS := ${MYCODEDIR}/*.h

# C

CC     := gcc
CFLAGS  = ${DEPENDFLAGS}

# C++

CXX      := g++
CROSS_COMPILER:=arm-linux-gnueabihf-
CXXFLAGS  = ${DEPENDFLAGS}

build/%.o : %.cc
	$(CROSS_COMPILER)${CXX} ${CPPFLAGS} -c $< -o $@ ${CXXFLAGS}

build/%.o : %.c
	$(CROSS_COMPILER)${CC} ${CPPFLAGS} -c $< -o $@ ${CCFLAGS}

# C preprocessor (C, C++, FORTRAN)

CPPFLAGS = -fPIC 

# linker

//LOADLIBES := -lbcm2835
LOADLIBES :=
LDFLAGS    = 

all: build libHDLCzedboard.so 

libHDLCzedboard.so: build/HDLCzedboard.o build/axi.o
	$(CROSS_COMPILER)g++ -shared -Wl,-soname,$@ -o $@ $^ ${LDFLAGS} ${LOADLIBES}


build:
	mkdir -p build
