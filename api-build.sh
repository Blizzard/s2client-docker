#!/bin/bash
mkdir -p build
pushd build
cmake -G "Unix Makefiles" ..
make -j8 all
popd
