#!/usr/bin/env bash
VERSION=3.16.1
PACKAGE=s2client-api-${VERSION}.tgz

echo "===================================="
echo "Building package ${PACKAGE}"

rm -f ${PACKAGE}*

pushd build/bin
tar -zcvf ../../${PACKAGE} *
popd
md5sum ${PACKAGE} > ${PACKAGE}.md5sum
cat ${PACKAGE}.md5sum
echo "===================================="
