#!/usr/bin/env bash

# This runs the user dev container
docker run \
    -v code:/code \
    -v build:/build \
    -it s2client-`whoami`
