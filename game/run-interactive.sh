#!/usr/bin/env bash

# Run an interactive container with the build (see build/all.sh)
docker run \
    --entrypoint="/bin/bash" \
    -v code:/code
    -v build:/build 
    -it s2client-game
