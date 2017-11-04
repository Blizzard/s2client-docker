#!/usr/bin/env bash

SCRIPT_PATH=${0%/*}
. ${SCRIPT_PATH}/../config.sh

# This builds the container for running the game
IMAGE_TAG=${REPOSITORY}/game:${GAME_VERSION}

echo ${IMAGE_NAME} docker image building using ${SCRIPT_PATH}/Dockerfile
docker build ${SCRIPT_PATH} \
    --tag ${IMAGE_TAG} \
    --build-arg BUILD_MOUNT=${BUILD_MOUNT} \
    --build-arg REPLAYS_MOUNT=${REPLAYS_MOUNT}
