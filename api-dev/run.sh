#!/usr/bin/env bash

SCRIPT_PATH=${0%/*}

# Get absolute path to local container data
pushd ${SCRIPT_PATH}
SCRIPT_PATH=$(pwd -P)
popd

# Make sure the local points are available
mkdir -p _local/code
mkdir -p _local/build

. ${SCRIPT_PATH}/../config.sh

# API development is bound to a specific build of the game
IMAGE_TAG=${REPOSITORY}/api-dev:${GAME_VERSION}

# This runs the user dev container
docker run \
    --volume ${SCRIPT_PATH}/_local/code:/s2client/shared/code \
    --volume ${SCRIPT_PATH}/_local/build:/s2client/shared/build \
    --interactive --tty ${IMAGE_TAG}
