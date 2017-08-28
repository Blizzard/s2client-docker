#!/usr/bin/env bash

# Run a background container with the build (see build/all.sh)
docker run -P \
    -v code:/code \
    -v build:/build \
    -d s2client-game
