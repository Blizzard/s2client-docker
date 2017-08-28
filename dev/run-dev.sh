#!/usr/bin/env bash

docker run \
    -v build-mount:/build-mount \
    -it s2client-dev
