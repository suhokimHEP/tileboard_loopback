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
CXXFLAGS  = ${DEPENDFLAGS}

build/%.o : %.cc
	${CXX} ${CPPFLAGS} -c $< -o $@ ${CXXFLAGS}

build/%.o : %.c
	${CC} ${CPPFLAGS} -c $< -o $@ ${CCFLAGS}

# C preprocessor (C, C++, FORTRAN)

CPPFLAGS = 

# linker

LOADLIBES := -lbcm2835
LDFLAGS    = 

all: build libHDLCrpispi.so 

libHDLCrpispi.so: build/HDLCrpispi.o build/spi_common.o
	g++ -shared -Wl,-soname,$@ -o $@ $^ ${LDFLAGS} ${LOADLIBES}


build:
	mkdir -p build
