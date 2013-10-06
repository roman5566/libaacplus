#!/bin/sh
# an attempt to build libaacplus since homebrew doesn't have

## Enter the ps3toolchain directory.
cd "`dirname $0`" || { echo "ERROR: Could not enter the ps3toolchain directory."; exit 1; }

## Create the build directory.
mkdir -p build && cd build || { echo "ERROR: Could not create the build directory."; exit 1; }

## Use gmake if available
which gmake 1>/dev/null 2>&1 && export MAKE=gmake

## get the source code
wget http://217.20.164.161/~tipok/aacplus/libaacplus-2.0.2.tar.gz -O libaacplus.tar.gz

## unpack the source

## compile and configure the source
./configure && make && make install
