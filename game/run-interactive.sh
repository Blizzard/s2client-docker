#!/usr/bin/env bash

# Run an interactive container with the build-mount (see build/all.sh)
docker run --entrypoint="/bin/bash" -v build-mount:/build-mount -it s2client-game
