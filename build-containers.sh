#!/bin/bash

docker build . -f Dockerfile.build -t s2client-api
docker build . -f Dockerfile.game -t s2client-game
