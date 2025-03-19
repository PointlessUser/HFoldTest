@echo off
REM Create build directory
mkdir build
cd build

REM Configure with CMake (MSVC will be auto-used)
cmake -DCMAKE_C_FLAGS="/DHAVE_STRDUP=1" -DCMAKE_INSTALL_PREFIX=%PREFIX% ..

REM Build
cmake --build . --parallel

REM Install
cmake --install . --prefix %PREFIX%

cd ..
