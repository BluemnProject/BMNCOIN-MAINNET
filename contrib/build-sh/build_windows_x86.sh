#!/bin/sh
echo '#################################################'
echo '# Building Bluemn Core                          #'
echo '#################################################'
cd ../..
BMN_ROOT=$(pwd)
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get -y install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils autoconf
sudo apt-get -y install g++-mingw-w64-i686 mingw-w64-i686-dev g++-mingw-w64-x86-64 mingw-w64-x86-64-dev
cd depends
make HOST=i686-w64-mingw32 -j4
cd ..
echo 1 | sudo update-alternatives --config i686-w64-mingw32-gcc
echo 1 | sudo update-alternatives --config i686-w64-mingw32-g++
./autogen.sh
./configure --prefix=`pwd`/depends/i686-w64-mingw32
make -j4
mkdir -p $BMN_ROOT/release/
cp $BMN_ROOT/src/bluemnd.exe $BMN_ROOT/release/
cp $BMN_ROOT/src/bluemn-cli.exe $BMN_ROOT/release/
cp $BMN_ROOT/src/bluemn-tx.exe $BMN_ROOT/release/
cp $BMN_ROOT/src/qt/bluemn-qt.exe $BMN_ROOT/release/
