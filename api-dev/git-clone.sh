#!/usr/bin/env bash

#
# This clones a clean copy of the repo
#
mkdir -p _local/code

pushd _local/code

if [ -d s2client-api ]; then
    cd s2client-api && git pull -r
else
    git clone --recursive https://github.com/Blizzard/s2client-api
fi

popd
