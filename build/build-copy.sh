#!/usr/bin/env bash

SCRIPT_PATH=${0%/*}
. ${SCRIPT_PATH}/../config.sh

# Build the API artifacts in the build folder
docker run -it -v build:/build --entrypoint="/s2client-api/api-all.sh" s2client-api
