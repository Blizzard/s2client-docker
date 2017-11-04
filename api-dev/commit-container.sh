#!/usr/bin/env bash

#
# This commits the last run container (dev) as with the system user
# as a tag.
#

SYSTEM_USER_NAME=`whoami`
LAST_CONTAINER_ID=`docker ps -q -l`
CONTAINER_NAME=s2client-${SYSTEM_USER_NAME}

echo "Committing last  container ${LAST_CONTAINER_ID} as ${CONTAINER_NAME}"
docker commit ${LAST_CONTAINER_ID} ${CONTAINER_NAME}
