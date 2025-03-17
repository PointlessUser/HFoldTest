#!/bin/bash
mkdir -p build
cd build
cmake \
  -DCMAKE_C_COMPILER="${CC}" \
  -DCMAKE_CXX_COMPILER="${CXX}" \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
  -DCMAKE_OSX_DEPLOYMENT_TARGET=${MACOSX_DEPLOYMENT_TARGET} \
  -DCMAKE_SYSROOT="${CONDA_BUILD_SYSROOT}" \
  -DCMAKE_C_FLAGS="${CFLAGS} -DHAVE_STRDUP=1" \
  -DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
  ..

cmake --build . --parallel
cmake --install . --prefix=${PREFIX}
