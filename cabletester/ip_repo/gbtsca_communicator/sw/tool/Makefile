CORELOC=../core

ifneq ($(words $(wildcard make.local)),0)
include make.local
endif

ifneq ($(words $(wildcard ../make.vars)),0)
include ../make.vars
endif

COREINC:=${CORELOC}/include
CORELIB:=${CORELOC}/lib
READLINELIB:=../core/readline-8.0/shlib
SEARCHDIRS=-I${COREINC}



# variables

LINKER       := g++
DEPENDFLAGS  := -O3 -Wall -Wno-address ${SEARCHDIRS} -fPIC -g
TOUCHHEADERS := ${MYCODEDIR}/*.h

# C

CC     := gcc
CFLAGS  = ${DEPENDFLAGS}

# C++

CXX      := g++
CXXFLAGS  = ${DEPENDFLAGS}

#%.o : %.cc
#	$(CROSS_COMPILER)${CXX} ${CPPFLAGS} -c $< -o $@ ${CXXFLAGS}

# C preprocessor (C, C++, FORTRAN)

CPPFLAGS = 

# linker

LOADLIBES := -lreadline -lhgcscaCore
LDFLAGS    = -L${READLINELIB} -L${CORELIB}
XTRAFLAG   = -Wl,-rpath,../core/readline-8.0/shlib
all: hgcscaTool

hgcscaTool: build/hgcscaTool.o build/Menu.o
	$(CROSS_COMPILER)${LINKER} ${LOADLIBES} ${XTRAFLAG} -o $@ $^ ${LDFLAGS}

build/hgcscaTool.o: src/hgcscaTool.cc $(wildcard src/*.icc) $(wildcard ${COREINC}/hgcsca/*.hh) build
	$(CROSS_COMPILER)${CXX} ${CPPFLAGS} ${CXXFLAGS} -c  src/hgcscaTool.cc -o $@

build/Menu.o: src/Menu.cc
	$(CROSS_COMPILER)${CXX} ${CPPFLAGS} ${CXXFLAGS} -c $< -o $@

build:
	mkdir -p build
