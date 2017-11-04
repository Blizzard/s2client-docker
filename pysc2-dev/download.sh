#!/usr/bin/env bash

SCRIPT_PATH=${0%/*}
. ${SCRIPT_PATH}/../config.sh

WGET_CMD="wget --timestamping --continue"

#
# This downloads zip files for current version
#
mkdir -p downloads/

pushd downloads

# Clone the pysc2 repo
if [ ! -d pysc2 ]; then
    git clone --recursive git@github.com:deepmind/pysc2.git
else
    pushd pysc2
    git pull -r 
    popd
fi 

${WGET_CMD} https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh

popd
