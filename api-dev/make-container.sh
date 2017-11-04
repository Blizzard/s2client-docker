#!/usr/bin/env bash

SCRIPT_PATH=${0%/*}
. ${SCRIPT_PATH}/../config.sh

# This builds the container that could be used to clone the API and work on 
# local changes
IMAGE_TAG=${REPOSITORY}/api-dev:${GAME_VERSION}

echo ${IMAGE_TAG} building using ${SCRIPT_PATH}/Dockerfile

# Build the dev container and echo the public ssh key for github access
docker build --build-arg GAME_VERSION=${GAME_VERSION} ${SCRIPT_PATH} --tag ${IMAGE_TAG} && \
docker run \
    --rm \
    --tty ${IMAGE_TAG}
    "/bin/cat /root/.ssh/id_rsa.pub"
