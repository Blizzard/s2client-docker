#!/usr/bin/env bash

# This builds the container for building the API code
SCRIPT_PATH=${0%/*}

. ${SCRIPT_PATH}/../config.sh

IMAGE_TAG=${REPOSITORY}/api-build:${GAME_VERSION}

echo Copying config.sh for current version
cp ${SCRIPT_PATH}/../config.sh ${SCRIPT_PATH}/container-scripts/api-config.sh

echo ${IMAGE_TAG} building using ${SCRIPT_PATH}/Dockerfile
docker build ${SCRIPT_PATH} --build-arg GAME_VERSION=${GAME_VERSION} --tag ${IMAGE_TAG}
