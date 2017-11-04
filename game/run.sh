#!/usr/bin/env bash

# Run a background container with the build
docker run -P \
    --volume code:/code \
    --volume build:/build \
    --detach s2client-game
