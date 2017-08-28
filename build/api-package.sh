#!/usr/bin/env bash

. api-config.sh

PACKAGE=s2client-api-${GAME_VERSION}.tgz

echo "===================================="
echo "Building package ${PACKAGE}"

rm -f ${PACKAGE}*

pushd build/bin
tar -zcvf ../../${PACKAGE} *
popd
md5sum ${PACKAGE} > ${PACKAGE}.md5sum
cat ${PACKAGE}.md5sum
echo "===================================="
