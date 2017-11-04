#!/usr/bin/env bash

. api-config.sh

PACKAGE=s2client-api-${GAME_VERSION}.tgz

echo "===================================="
echo "Building package ${PACKAGE}"

pushd /s2client/shared/build/packages/
rm -f ${PACKAGE}*
popd

pushd /s2client/shared/build/bin
tar -zcvf /s2client/shared/build/packages/${PACKAGE} *
popd

pushd /s2client/shared/build/packages/
md5sum ${PACKAGE} > ${PACKAGE}.md5sum
cat ${PACKAGE}.md5sum
echo "===================================="
popd
