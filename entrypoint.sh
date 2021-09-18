#!/bin/sh -l

set -e

mkdir build
cd build
cmake ..
make -j$(nproc)
make test
