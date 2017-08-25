#!/usr/bin/env bash

# Clones the git repo, makes the build container, builds the API and copies the
# artifacts to the build-mount volume
./clone.sh && ./make-container.sh && ./build-copy.sh
