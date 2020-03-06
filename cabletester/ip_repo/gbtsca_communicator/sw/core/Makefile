ifneq ($(words $(wildcard make.local)),0)
include make.local
endif

ifneq ($(words $(wildcard ../make.vars)),0)
include ../make.vars
endif

SEARCHDIRS=-Iinclude/


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

build/%.o : src/%.cc
	$(CROSS_COMPILER)${CXX} ${CPPFLAGS} -c $< -o $@ ${CXXFLAGS}

# C preprocessor (C, C++, FORTRAN)

CPPFLAGS = 

# linker

LOADLIBES := -ldl
LDFLAGS    =

LIBSRC := SCA.cc HDLCFactory.cc HDLCdummy.cc Exception.cc HDLC.cc
LIBOBJ := $(addprefix build/,$(subst .cc,.o,${LIBSRC}))

all: build lib

lib: lib/libhgcscaCore.so bin/HDLCtest.exe

lib/libhgcscaCore.so: ${LIBOBJ}
	mkdir -p lib
	$(CROSS_COMPILER)g++ -shared -Wl,-soname,libhgcscaCore.so -o $@ $^ ${LDFLAGS} ${LOADLIBES}

bin/HDLCtest.exe: build/HDLCtest.o
	mkdir -p bin
	$(CROSS_COMPILER)g++ -o $@ $^ ${LDFLAGS} ${LOADLIBES} -Llib -lhgcscaCore

build:
	mkdir -p build

clean:
	rm -rf bin build lib
