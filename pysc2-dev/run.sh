#!/usr/bin/env bash

SCRIPT_PATH=${0%/*}

# Get absolute path to local container data
pushd ${SCRIPT_PATH}
SCRIPT_PATH=$(pwd -P)
popd


. ${SCRIPT_PATH}/../config.sh

IMAGE_TAG=${REPOSITORY}/pysc2-dev:latest

# This runs the user dev container
docker run \
    --volume ${SCRIPT_PATH}/_local/code:/s2client/shared/code \
    --interactive --tty ${IMAGE_TAG}
