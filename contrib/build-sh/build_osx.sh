#!/bin/sh
cd ../..
BMN_ROOT=$(pwd)
echo -ne '\n' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install autoconf automake berkeley-db4 libtool boost miniupnpc openssl pkg-config protobuf libevent qt
./autogen.sh
./configure
make -j4
mkdir -p release
cp src/bluemnd $BMN_ROOT/release
cp src/bluemn-tx $BMN_ROOT/release
cp src/bluemn-cli $BMN_ROOT/release
cp src/qt/bluemn-qt $BMN_ROOT/release
make deploy
echo "Done. your 'Bluemn-qt.dmg' is ready"
