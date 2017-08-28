#!/usr/bin/env bash

# This builds the container for building the API code
IMAGE_NAME=s2client-api
SCRIPT_PATH=${0%/*}

echo Copying config.sh for current version
cp ${SCRIPT_PATH}/../config.sh ${SCRIPT_PATH}/api-config.sh

echo ${IMAGE_NAME} docker image building using ${SCRIPT_PATH}/Dockerfile
docker build ${SCRIPT_PATH} -t ${IMAGE_NAME}
