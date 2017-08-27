#!/usr/bin/env bash

# This builds the container
IMGNAME=s2client-api
SCRIPT_PATH=${0%/*}

echo ${IMGNAME} docker image building using ${SCRIPT_PATH}/Dockerfile
docker build ${SCRIPT_PATH} -t ${IMGNAME}
