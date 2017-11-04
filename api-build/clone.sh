#!/usr/bin/env bash

#
# This clones a clean copy of the repo
#
mkdir -p downloads

pushd downloads

if [ -d s2client-api ]; then
    cd s2client-api && git pull -r
else
    git clone --recursive https://github.com/Blizzard/s2client-api
fi

popd
