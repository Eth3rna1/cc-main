@echo off

if not exist "build" (
    cmake -S . -B build -G "MinGW Makefiles"
    if errorlevel 1 exit /b 1
)

cmake --build build

build\cc-main %*

if errorlevel 1 exit /b 1
