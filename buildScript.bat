@echo off
setlocal

:: Ensure CMake and Ninja are in the PATH or specify full paths here
set CMAKE_PATH=C:\Program Files\CMake\bin
set NINJA_PATH=C:\ProgramData\chocolatey\bin\

:: Directory of the ExampleLib project relative to this script
set EXAMPLELIB_DIR=.\ExampleLib

:: Directory of the ExampleApp project relative to this script
set EXAMPLEAPP_DIR=.\ExampleApp

:: Build directory name
set BUILD_DIR=build

echo Building ExampleLib...
cd %EXAMPLELIB_DIR%
if exist %BUILD_DIR% rmdir /s /q %BUILD_DIR%
mkdir %BUILD_DIR%
cd %BUILD_DIR%
"%CMAKE_PATH%\cmake.exe"-S . -B build -G "Visual Studio 17 2022" -A x64 -DCMAKE_PREFIX_PATH=C:\Qt\6.7.0\msvc2019_64\lib\cmake
"%CMAKE_PATH%\cmake.exe" --build . --config Release

echo.
echo Building ExampleApp...
cd %CD%\..\..\%EXAMPLEAPP_DIR%
if exist %BUILD_DIR% rmdir /s /q %BUILD_DIR%
mkdir %BUILD_DIR%
cd %BUILD_DIR%
"%CMAKE_PATH%\cmake.exe" -S .. -B . -G "Visual Studio 17 2022" -A x64 -DCMAKE_PREFIX_PATH=C:\Qt\6.7.0\msvc2019_64\lib\cmake
"%CMAKE_PATH%\cmake.exe" --build . --config Release

echo.
echo Build process completed.
pause

endlocal
