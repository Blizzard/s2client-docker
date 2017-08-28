#!/usr/bin/env bash

#
# Build all containers with one command, intentionally omitting 'dev'
#
CONTAINER_LIST="build game"
for CONTAINER in $CONTAINER_LIST; do
    echo ====== Running all steps for container: $CONTAINER
    pushd $CONTAINER
    ./all.sh
    popd
    echo ====== Finished all steps for container: $CONTAINER
done

echo COMPLETED build of $CONTAINER_LIST
