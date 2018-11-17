#!/bin/sh

cd ../..

BMN_ROOT=$(pwd)

echo '#################################################'
echo '# Building Bluemn Core                          #'
echo '#################################################'
cd $BMN_ROOT
chmod ugo+x autogen.sh
./autogen.sh
./configure LDFLAGS="-L${BDB_PREFIX}/lib/" CPPFLAGS="-I${BDB_PREFIX}/include/"
make -j28
mkdir -p release
cp src/bluemnd $BMN_ROOT/release
cp src/bluemn-tx $BMN_ROOT/release
cp src/bluemn-cli $BMN_ROOT/release
cp src/qt/bluemn-qt $BMN_ROOT/release
