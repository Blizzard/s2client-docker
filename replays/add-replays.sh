#!/usr/bin/env bash

#
# This script downloads the replay pack, adds it to a running container
#
SCRIPT_PATH=${0%/*}
. ${SCRIPT_PATH}/../config.sh


# Download and extract the replay pack if it doesn't exist
#
# TODO: make replay pack handling more dynamic
#
REPLAY_PACK=3.16.1-Pack_1-fix.zip

mkdir -p downloads
if [ ! -f downloads/${REPLAY_PACK} ]; then
    pushd downloads
    wget -c http://blzdistsc2-a.akamaihd.net/ReplayPacks/${REPLAY_PACK}
    mkdir -p replays
    ${UNZIP_CMD} ${REPLAY_PACK} -d replays/
    popd
fi

#
# Start a new game container if GAME_CONTAINER is not yet defined
#
if [ "${GAME_CONTAINER}" == "" ]; then
    export GAME_CONTAINER=`docker run -d s2client-game`
    echo "New game container started ${GAME_CONTAINER}"
fi


#
# TODO: Replays can use a mount, cache should be joined and either
# mounted or copied in. 
#
SRC_PATH="downloads/replays/Replays"
DEST_PATH="/SC2/${GAME_VERSION}/StarCraftII/Replays/"

echo "Copying into ${GAME_CONTAINER} ${SRC_PATH} -> ${DEST_PATH}"
#docker cp ${SRC_PATH} ${GAME_CONTAINER}:${DEST_PATH}

SRC_PATH="downloads/replays/Battle.net/"
DEST_PATH="/SC2/${GAME_VERSION}/StarCraftII/Battle.net/"

echo "Copying into ${GAME_CONTAINER} ${SRC_PATH} -> ${DEST_PATH}"
#docker cp ${SRC_PATH} ${GAME_CONTAINER}:${DEST_PATH}
