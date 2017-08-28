#!/usr/bin/env bash

docker run \
    -v code:/code \
    -v build:/build \
    -it s2client-dev
