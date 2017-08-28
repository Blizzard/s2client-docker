#!/usr/bin/env bash

# This builds the container for running the game
IMAGE_NAME=s2client-game
SCRIPT_PATH=${0%/*}

echo ${IMAGE_NAME} docker image building using ${SCRIPT_PATH}/Dockerfile
docker build ${SCRIPT_PATH} -t ${IMAGE_NAME}
