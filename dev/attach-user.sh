#!/usr/bin/env bash

# This attaches a shell the last user dev container ID
docker exec -it `docker ps -l -q` /bin/bash
