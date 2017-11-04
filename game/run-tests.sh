#!/usr/bin/env bash

SCRIPT_PATH=${0%/*}
. ${SCRIPT_PATH}/../config.sh

# Run all the tests
docker run \
    --entrypoint "${BUILD_MOUNT}/all_tests" \
    -v build:${BUILD_MOUNT} \
    -v code:${CODE_MOUNT} \
    -t ${IMAGE_TAG} \
    -e /SC2/${GAME_VERSION}/StarCraftII/Versions/Base${BASE_BUILD_ID}/SC2_x64
