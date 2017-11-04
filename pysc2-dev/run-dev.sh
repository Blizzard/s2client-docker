#!/usr/bin/env bash

docker run \
    -v code:/code \
    -u root \
    -v build:/build \
    -it s2client-dev
