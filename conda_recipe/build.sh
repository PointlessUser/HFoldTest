#!/bin/bash
set -ex

mkdir -p build
cd build

cmake -DCMAKE_CXX_COMPILER=${CXX} \
      -DCMAKE_C_FLAGS="-DHAVE_STRDUP=1" \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_VERBOSE_MAKEFILE=ON \
      -DCMAKE_INSTALL_PREFIX=${PREFIX} \
      ..

cmake --build . --parallel
cmake --install .
