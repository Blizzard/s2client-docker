#!/usr/bin/env bash

#
# This cleans up runtime images that have exited and prevents accumulating
# a lot of docker image bloat on your local system
#
docker rm $(docker ps -qaf status=exited)
