#!/usr/bin/env bash

VERSION=3.16.1

# Build the API artifacts in the build-mount folder
docker run -it -v build-mount:/build-mount --entrypoint="/s2client-api/api-all.sh" s2client-api
