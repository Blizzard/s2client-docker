#!/usr/bin/env bash

# This builds the container that could be used to clone the API and work on 
# local changes
IMAGE_NAME=s2client-dev
SCRIPT_PATH=${0%/*}

echo ${IMAGE_NAME} docker image building using ${SCRIPT_PATH}/Dockerfile
docker build ${SCRIPT_PATH} -t ${IMAGE_NAME}
