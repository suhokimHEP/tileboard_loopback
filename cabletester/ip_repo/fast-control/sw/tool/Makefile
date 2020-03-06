CORELOC=../core
READLINELIB:=../core/readline-8.0/shlib

ifneq ($(words $(wildcard make.local)),0)
include make.local
endif

ifneq ($(words $(wildcard ../make.vars)),0)
include ../make.vars
endif

COREINC:=${CORELOC}/include
CORELIB:=${CORELOC}/lib
SEARCHDIRS=-I${COREINC}



# variables

LINKER       := ${CROSS_COMPILER}g++
DEPENDFLAGS  := -O3 -Wall -Wno-address ${SEARCHDIRS} -fPIC -g
TOUCHHEADERS := ${MYCODEDIR}/*.h

# C

CC     := ${CROSS_COMPILER}gcc
CFLAGS  = ${DEPENDFLAGS}

# C++

CXX      := ${CROSS_COMPILER}g++
CXXFLAGS  = ${DEPENDFLAGS}

#%.o : %.cc
#	$(CROSS_COMPILER)${CXX} ${CPPFLAGS} -c $< -o $@ ${CXXFLAGS}

# C preprocessor (C, C++, FORTRAN)

CPPFLAGS = 

# linker

LOADLIBES := -lreadline -lhgcfcCore -ltinfo
#LOADLIBES := -lhgcfcCore
#LDFLAGS    = -L${CORELIB}
LDFLAGS    = -L${READLINELIB} -L${CORELIB} 
#XTRAFLAG   = -Wl,-rpath,../core/readline-8.0/shlib
all: hgcfcTool

hgcfcTool: build/hgcfcTool.o build/Menu.o
	${LINKER} ${LOADLIBES} ${XTRAFLAG} -o $@ $^ ${LDFLAGS}

build/hgcfcTool.o: src/hgcfcTool.cc $(wildcard src/*.icc) $(wildcard ${COREINC}/hgcfc/*.hh) build
	${CXX} ${CPPFLAGS} ${CXXFLAGS} -c  src/hgcfcTool.cc -o $@

build/Menu.o: src/Menu.cc
	${CXX} ${CPPFLAGS} ${CXXFLAGS} -c $< -o $@

build:
	mkdir -p build
