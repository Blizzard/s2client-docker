#!/usr/bin/env bash

# This runs the user dev container
docker run \
    -v build-mount:/build-mount \
    -it s2client-`whoami`
