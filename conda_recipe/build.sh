#!/bin/bash
set -ex  # <--- ADD THIS! Enables bash debug + exit on error

mkdir -p build
cd build
cmake -DCMAKE_CXX_COMPILER=${CXX} -DCMAKE_C_FLAGS="-DHAVE_STRDUP=1" -DCMAKE_BUILD_TYPE=Release -DCMAKE_VERBOSE_MAKEFILE=ON ..
cmake --build . --parallel
cmake --install . --prefix=${PREFIX}
