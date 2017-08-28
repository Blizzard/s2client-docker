#!/usr/bin/env bash

# This unpacks all of the zip files automatically

SCRIPT_PATH=${0%/*}
. ${SCRIPT_PATH}/../config.sh

pushd downloads

if [ ! -d ${GAME_VERSION}/StarCraftII ]; then
    $UNZIP_CMD SC2.${GAME_VERSION}.zip -d ${GAME_VERSION}
fi

MAP_DIRECTORY=${GAME_VERSION}/StarCraftII/Maps

for i in `ls -1 {Ladder,Melee}*.zip`; do
    $UNZIP_CMD -n -d $MAP_DIRECTORY $i
done

cp -r s2client-api/maps/* $MAP_DIRECTORY/

popd
