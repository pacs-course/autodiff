#!/bin/bash
#
# This is the utility to install muparser for the PACS examples
#
mkdir -p build
#
# go in the build directory (remove all old files in that dir if needed)
cd build/
#
# run cmake
#
# this creates the dynamic libraries and optimised code
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=../../../Examples/ ../

# uncomment this line (and comment the previous one)
#if you want to debug, this also creates the static libraries

#cmake -D CMAKE_BUILD_TYPE=Debug -D CMAKE_INSTALL_PREFIX=../../../Examples/ ../

#install
make install

# You can remove the files in the build/ directory now
cd ..
rm -r -f build/
