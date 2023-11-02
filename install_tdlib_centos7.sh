#!/bin/bash

sudo yum update -y
sudo yum install -y centos-release-scl-rh epel-release
sudo yum install -y devtoolset-9-gcc devtoolset-9-gcc-c++
sudo yum install -y gcc-c++ make git zlib-devel openssl-devel php gperf cmake3
git clone https://github.com/tdlib/td.git
cd td
git checkout daf480138d482e7970f6d7a681d778a98f11fdd2
rm -rf build
mkdir build
cd build
CC=/opt/rh/devtoolset-9/root/usr/bin/gcc CXX=/opt/rh/devtoolset-9/root/usr/bin/g++ cmake3 -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr/local ..
cmake3 --build . --target install
cd ..
cd ..
ls -l /usr/local

rm -rf install_tdlib_centos7.sh
rm -rf td
