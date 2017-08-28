#!/usr/bin/env bash

# Run an interactive container with the build (see build/all.sh)
docker run \
    --entrypoint "/build/all_tests" \
    -v build:/build \
    -v code:/code \
    -t s2client-game \
    -e /SC2/3.16.1/StarCraftII/Versions/Base55958/SC2_x64
