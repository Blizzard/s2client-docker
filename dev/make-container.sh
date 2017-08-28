#!/usr/bin/env bash

# This builds the container that could be used to clone the API and work on 
# local changes
IMAGE_NAME=s2client-dev
SCRIPT_PATH=${0%/*}

# Get the current git user to intantiate in the container
SYSTEM_USER_NAME=`whoami`
GIT_USER_NAME=`git config --get user.name`
GIT_EMAIL=`git config --get user.email`

echo ${IMAGE_NAME} docker image building using ${SCRIPT_PATH}/Dockerfile
echo Configuring for GIT user: $SYSTEM_USER_NAME, name: ${GIT_USER_NAME}, email: ${GIT_EMAIL}

docker build ${SCRIPT_PATH} \
    --build-arg SYSTEM_USER_NAME=${SYSTEM_USER_NAME} \
    --build-arg GIT_USER_NAME="${GIT_USER_NAME}" \
    --build-arg GIT_EMAIL="${GIT_EMAIL}" \
    -t ${IMAGE_NAME}

echo ==== Your github.com SSH public key for the container is:

# Output the key for usage on github.com
docker run -t ${IMAGE_NAME}:latest -c "/bin/cat /home/${SYSTEM_USER_NAME}/.ssh/id_rsa.pub"
