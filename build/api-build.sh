#!/bin/bash

# This script is intended to be embedded in the build container for
# automating the CMake / GNU make build process

mkdir -p build
pushd build
cmake -G "Unix Makefiles" ..
make -j8 all
popd
