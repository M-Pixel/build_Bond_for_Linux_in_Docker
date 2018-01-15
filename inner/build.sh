#!/bin/bash
apt-get update
apt-get install -y      \
	clang               \
	cmake               \
	curl                \
	git                 \
	libboost-dev        \
	libboost-thread-dev \
	zlib1g-dev
curl -sSL https://get.haskellstack.org/ | sh
git clone --recursive https://github.com/Microsoft/bond.git
cd bond
mkdir build
cd build
cmake -DBOND_ENABLE_GRPC=FALSE ..
make
cp compiler/build/gbc/gbc /out/
