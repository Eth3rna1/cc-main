@echo off

if not exist "build" (
    cmake -S . -B build -G "MinGW MakeFiles"
    if errorlevel 1 exit /b 1
)

cmake --build build

build\cc-main %*

if errorlevel 1 exit /b 1
