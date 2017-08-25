#!/bin/bash
echo "Copying built artifacts into /build-mount"
ls /s2client-api/s2client-api-*
cp /s2client-api/s2client-api-* /build-mount/
