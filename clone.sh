#!/bin/bash
mkdir -p downloads
pushd downloads
rm -rf s2client-api
git clone --recursive https://github.com/Blizzard/s2client-api
popd
