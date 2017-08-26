#!/bin/bash

#!/bin/bash

# Run an interactive container with the build-mount (see build/all.sh)
docker run -v build-mount:/build-mount -t --entrypoint="/build-mount/all_tests -e /SC2/3.16.1/StarCraftII/Versions/Base55958/SC2_x64" s2client-game
