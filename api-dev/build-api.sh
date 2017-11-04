#!/usr/bin/env bash

SCRIPT_PATH=${0%/*}

# Get absolute path to local container data
pushd ${SCRIPT_PATH}
SCRIPT_PATH=$(pwd -P)
popd

. ${SCRIPT_PATH}/../config.sh

IMAGE_TAG=${REPOSITORY}/api-dev:${GAME_VERSION}

# Build the API artifacts in the build folder
docker run --interactive \
    --tty \
    --volume ${SCRIPT_PATH}/_local/code:/s2client/shared/code \
    --volume ${SCRIPT_PATH}/_local/build:/s2client/shared/build \
    --entrypoint="/api-scripts/api-all.sh" ${IMAGE_TAG}
