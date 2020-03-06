ifneq ($(words $(wildcard make.local)),0)
include make.local
endif

ifneq ($(words $(wildcard ../make.vars)),0)
include ../make.vars
endif

CORELOC=../../core

SEARCHDIRS=-I${CORELOC}/include/


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

# C preprocessor (C, C++, FORTRAN)

CPPFLAGS = -g

# linker

LOADLIBES := -ldl
LDFLAGS    = -L${CORELOC}/lib

all: build bin/HDLCserver.exe lib/libHDLCTCPsimple.so

lib/libHDLCTCPsimple.so: build/HDLCTCPsimple.o
	mkdir -p lib
	g++ -shared -Wl,-soname,libhgcscaCore.so -o $@ $^ ${LDFLAGS} ${LOADLIBES}

bin/HDLCserver.exe: build/HDLCserver.o
	mkdir -p bin
	g++ -g -o $@ $^ ${LDFLAGS} ${LOADLIBES} -Llib -lhgcscaCore

build:
	mkdir -p build
