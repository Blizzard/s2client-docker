
GAME_VERSION=3.16.1
BASE_BUILD_ID=55858

#
# Common variables used by scripts for building and controlling
# containers
#
REPOSITORY=jrepp/s2client

#
# Shared path
#
BASE_SHARED_PATH=/s2client/shared

#
# Volume path for mounting user configuration
#
CONFIG_MOUNT=${BASE_SHARED_PATH}/config

#
# Volume path for mounting shared code
#
CODE_MOUNT=${BASE_SHARED_PATH}/code

#
# Volume mount for build artifacts
#
BUILD_MOUNT=${BASE_SHARED_PATH}/build

#
# Volume mount for replay data
#
REPLAYS_MOUNT=${BASE_SHARED_PATH}/replays

#
# Common command replacements
#
UNZIP_CMD="unzip -Piagreetotheeula"
