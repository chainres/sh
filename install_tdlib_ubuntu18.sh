#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install make git zlib1g-dev libssl-dev gperf php-cli cmake g++  -y
git clone https://github.com/tdlib/td.git
cd td
git checkout daf480138d482e7970f6d7a681d778a98f11fdd2
rm -rf build
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr/local ..
cmake --build . --target install
cd ..
cd ..
ls -l /usr/local
rm -rf install_tdlib_ubuntu18.sh
rm -rf td
