#!/usr/bin/env bash

SCRIPT_PATH=${0%/*}
. ${SCRIPT_PATH}/../config.sh

IMAGE_TAG=${REPOSITORY}/api-dev:${GAME_VERSION}

# Build the API artifacts in the build folder
docker run --interactive \
    --tty \
    --volume _temp/build:/s2client/shared/build \
    --volume _temp/code:/s2client/shared/code \
    --entrypoint="/api-dev/api-all.sh" ${IMAGE_TAG}
