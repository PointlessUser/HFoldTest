@echo off
mkdir build
cd build

:: Use Ninja instead of Visual Studio
cmake -G "Ninja" ^
  -DCMAKE_C_FLAGS="/DHAVE_STRDUP=1" ^
  -DCMAKE_INSTALL_PREFIX=%PREFIX% ^
  %SRC_DIR%

cmake --build . --parallel
cmake --install . --prefix %PREFIX%

cd ..
