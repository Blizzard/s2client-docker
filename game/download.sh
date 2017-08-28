#!/usr/bin/env bash

SCRIPT_PATH=${0%/*}
. ${SCRIPT_PATH}/../config.sh

WGET_CMD="wget --timestamping --continue"

#
# This downloads zip files for current version
#
mkdir -p downloads/

pushd downloads

# Just clone the base repository for the maps
if [ ! -d s2client-api ]; then
    git clone git@github.com:Blizzard/s2client-api.git
else
    pushd s2client-api
    git pull -r 
    popd
fi 

${WGET_CMD} http://blzdistsc2-a.akamaihd.net/Linux/SC2.${GAME_VERSION}.zip
${WGET_CMD} http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season1.zip
${WGET_CMD} http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season2.zip
${WGET_CMD} http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season3.zip
${WGET_CMD} http://blzdistsc2-a.akamaihd.net/MapPacks/Melee.zip

popd
