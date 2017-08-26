#!/usr/bin/env bash

docker rm $(docker ps -qaf status=exited)
