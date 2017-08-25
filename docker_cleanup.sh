#!/bin/bash
docker rm $(docker ps -qaf status=exited)
