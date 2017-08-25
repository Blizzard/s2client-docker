#!/bin/bash

# This clones a clean copy of the repo
mkdir -p downloads
pushd downloads
rm -rf s2client-api
git clone --recursive https://github.com/Blizzard/s2client-api
popd
