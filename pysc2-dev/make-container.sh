#!/usr/bin/env bash

# This builds the container that could be used to clone the API and work on 
# local changes
SCRIPT_PATH=${0%/*}
. ${SCRIPT_PATH}/../config.sh

# PySC2 works with multiple game versions
IMAGE_TAG=${REPOSITORY}/pysc2-dev:latest

echo ${IMAGE_TAG} docker image building using ${SCRIPT_PATH}/Dockerfile

docker build ${SCRIPT_PATH} --tag ${IMAGE_TAG} && \
    docker run --rm --tty --entrypoint="/bin/cat" ${IMAGE_TAG} /root/.ssh/id_rsa.pub
