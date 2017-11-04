#!/usr/bin/env bash

# This builds the container that could be used to clone the API and work on 
# local changes
SCRIPT_PATH=${0%/*}
. ${SCRIPT_PATH}/../config.sh

IMAGE_TAG=${REPOSITORY}/pysc2dev:${GAME_VERSION}

echo ${IMAGE_TAG} docker image building using ${SCRIPT_PATH}/Dockerfile

docker build ${SCRIPT_PATH} --tag ${IMAGE_TAG}

# Output the key for usage on github.com
docker run --rm --tty ${IMAGE_TAG} "/bin/cat /home/${SYSTEM_USER_NAME}/.ssh/id_rsa.pub"
