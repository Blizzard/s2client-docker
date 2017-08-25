#!/bin/bash

#
# This script downloads the replay pack, adds it to a running container
#
VERSION=3.16.1

# Download and extract the replay pack if it doesn't exist
# TODO: make replay pack handling more dynamic
REPLAY_PACK=3.16.1-Pack_1-fix.zip
if [ ! -f downloads/${REPLAY_PACK} ]; then
    pushd downloads
    wget http://blzdistsc2-a.akamaihd.net/ReplayPacks/${REPLAY_PACK}
    mkdir -p replays
    unzip ${REPLAY_PACK} -d replays/
    popd
fi


# Start a new game container if GAME_CONTAINER is not yet defined
if [ "${GAME_CONTAINER}" -eq "" ]; then
    GAME_CONTAINER=`docker run -d s2client-game`
    export GAME_CONTAINER
fi

DEST_PATH="/SC2/${VERSION}/StarCraftII/Replays/"
echo "Copying into ${CONTAINER} ${DEST_PATH}"
#docker cp downloads/$REPLAY_PACK $CONTAINER:$DEST_PATH
