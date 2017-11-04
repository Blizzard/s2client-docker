#!/usr/bin/env bash

# Clone or update the pysc2 repo 
mkdir -p _local/code
pushd _local/code
if [ ! -d pysc2 ]; then
    git clone --recursive git@github.com:deepmind/pysc2.git
else
    pushd pysc2
    git pull -r 
    popd
fi
