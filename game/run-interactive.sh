#!/usr/bin/env bash

SCRIPT_PATH=${0%/*}
. ${SCRIPT_PATH}/../config.sh

IMAGE_TAG=${REPOSITORY}/game:${GAME_VERSION}

# Run an interactive container with the build (see api-build/make-all.sh)
docker run \
    --rm \
    --entrypoint="/bin/bash" \
    --volume code:${CODE_MOUNT} \
    --volume build:${BUILD_MOUNT}  \
    --interactive --tty ${IMAGE_TAG}
