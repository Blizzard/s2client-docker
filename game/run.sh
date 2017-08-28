#!/usr/bin/env bash

# Run a background container with the build-mount (see build/all.sh)
docker run -P -v build-mount:/build-mount -d s2client-game
