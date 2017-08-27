#!/usr/bin/env bash

VERSION=3.16.1

# This downloads zip files for current version 
mkdir -p downloads/
pushd downloads
wget http://blzdistsc2-a.akamaihd.net/Linux/SC2.${VERSION}.zip
wget http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season1.zip
wget http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season2.zip
wget http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season3.zip
wget http://blzdistsc2-a.akamaihd.net/MapPacks/Melee.zip
popd
