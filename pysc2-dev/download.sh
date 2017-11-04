#!/usr/bin/env bash

SCRIPT_PATH=${0%/*}
. ${SCRIPT_PATH}/../config.sh

WGET_CMD="wget --timestamping --continue"

pushd downloads
${WGET_CMD} https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
popd
