ifneq ($(words $(wildcard make.local)),0)
include make.local
endif

ifneq ($(words $(wildcard ../make.vars)),0)
include ../make.vars
endif

SEARCHDIRS=-Iinclude/


# variables

LINKER       := ${CROSS_COMPILER}g++
DEPENDFLAGS  := -O3 -Wall -Wno-address ${SEARCHDIRS} -fPIC
TOUCHHEADERS := ${MYCODEDIR}/*.h

# C

CC     := ${CROSS_COMPILER}gcc
#CROSS_COMPILER:=arm-linux-gnueabihf-
CFLAGS  = ${DEPENDFLAGS}

# C++

CXX      := ${CROSS_COMPILER}g++
CXXFLAGS  = ${DEPENDFLAGS}

build/%.o : src/%.cc
	${CXX} ${CPPFLAGS} -c $< -o $@ ${CXXFLAGS}

# C preprocessor (C, C++, FORTRAN)

CPPFLAGS = 

# linker

LOADLIBES := -ldl
LDFLAGS    =

LIBSRC := FastControlFactory.cc FastControl.cc Exception.cc 
LIBOBJ := $(addprefix build/,$(subst .cc,.o,${LIBSRC}))

all: build lib

lib: lib/libhgcfcCore.so

lib/libhgcfcCore.so: ${LIBOBJ}
	mkdir -p lib
	${LINKER} -shared -Wl,-soname,libhgcfcCore.so -o $@ $^ ${LDFLAGS} ${LOADLIBES}

build:
	mkdir -p build

clean:
	rm -rf bin build lib
