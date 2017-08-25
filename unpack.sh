VERSION=3.16.1
UNZIP_CMD="unzip -Piagreetotheeula"

pushd downloads

if [ ! -d ${VERSION}/StarCraftII ]; then
    $UNZIP_CMD SC2.${VERSION}.zip -d ${VERSION}
fi

for i in `ls -1 {Ladder,Melee}*.zip`; do
    $UNZIP_CMD $i -d ${VERSION}/StarCraftII/Maps
done

popd
