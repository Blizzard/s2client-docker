#!/usr/bin/env bash

SCRIPT_PATH=${0%/*}
. ${SCRIPT_PATH}/../config.sh

WGET_CMD="wget --timestamping --continue"

#
# This downloads zip files for current version
#
mkdir -p downloads/

pushd downloads

${WGET_CMD} http://blzdistsc2-a.akamaihd.net/Linux/SC2.${GAME_VERSION}.zip
${WGET_CMD} http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season1.zip
${WGET_CMD} http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season2.zip
${WGET_CMD} http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season3.zip
${WGET_CMD} http://blzdistsc2-a.akamaihd.net/MapPacks/Melee.zip

popd
