#!/usr/bin/env bash

#
# Build all containers with one command, intentionally omitting 'dev'
#
CONTAINER_LIST="game api-build api-dev pysc2-dev"
for CONTAINER in $CONTAINER_LIST; do
    echo ====== Running all steps for container: $CONTAINER
    pushd $CONTAINER
    ./make-all.sh
    popd
    echo ====== Finished all steps for container: $CONTAINER
done

echo COMPLETED build of $CONTAINER_LIST
