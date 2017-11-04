#!/usr/bin/env bash

# Cleanup stopped containers and then remove unused images
stale_containers=$(docker ps --filter status=exited --quiet)
echo Cleaning stale containers
if [ -n "$stale_containers" ]; then
	docker rm $stale_containers
fi

stale_images=$(docker images --filter dangling=true --quiet)
echo Cleaning stale images
if [ -n "$stale_images" ]; then
	docker rmi $stale_images
fi

stale_volumes=$(docker volume ls -qf dangling=true)
echo Cleaning stale volumes
if [ -n "$stale_volumes" ]; then
	docker volume rm $stale_volumes
fi

