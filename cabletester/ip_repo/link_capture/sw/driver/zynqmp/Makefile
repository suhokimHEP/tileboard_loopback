COREINC=../../core/include

ifneq ($(words $(wildcard make.local)),0)
include make.local
endif

ifneq ($(words $(wildcard ../../make.vars)),0)
include ../../make.vars
endif

SEARCHDIRS=-I${COREINC}

# variables

LINKER       := ${CROSS_COMPILER}g++
DEPENDFLAGS  := -O3 -Wall -Wno-address ${SEARCHDIRS} -fPIC -MMD -MP -g
TOUCHHEADERS := ${MYCODEDIR}/*.h

# C

CC     := ${CROSS_COMPILER}gcc
CFLAGS  = ${DEPENDFLAGS}

# C++

CXX      := ${CROSS_COMPILER}g++

CXXFLAGS  = ${DEPENDFLAGS}

build/%.o : %.cc
	${CXX} ${CPPFLAGS} -c $< -o $@ ${CXXFLAGS}

build/%.o : %.c
	${CC} ${CPPFLAGS} -c $< -o $@ ${CCFLAGS}

# C preprocessor (C, C++, FORTRAN)

CPPFLAGS = -fPIC 

# linker

LOADLIBES :=
LDFLAGS    = 

TARGETS = build libLinkCaptureZynqMP.so

all: $(TARGETS)

libLinkCaptureZynqMP.so: build/LinkCaptureZynqMP.o 
	${LINKER} -shared -Wl,-soname,$@ -o $@ $^ ${LDFLAGS} ${LOADLIBES}

build:
	mkdir -p build

clean:
	rm -r $(TARGETS)

-include build/*.d
