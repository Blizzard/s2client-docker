#!/usr/bin/env bash
echo "Copying built artifacts into /build"
ls /s2client-api/s2client-api-*
cp /s2client-api/s2client-api-* /build/
