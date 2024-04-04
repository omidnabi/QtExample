cmake_minimum_required(VERSION 3.14)

project(ExampleApp VERSION 1.0.0 LANGUAGES CXX)

find_package(Qt6 REQUIRED COMPONENTS Core Quick)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

# Assuming ExampleLib is at the same directory level as ExampleApp
add_subdirectory(../ExampleLib ${CMAKE_BINARY_DIR}/build)

add_executable(ExampleApp
    main.cpp
    qml.qrc
)

# Link against the ExampleLib. This should also automatically add its include directories.
target_link_libraries(ExampleApp Qt6::Core Qt6::Quick ExampleLib)

# If for some reason the include directories are not properly added, manually add them.
# This is only necessary if the automatic inclusion through target_link_libraries doesn't work.
# Adjust the path as necessary.
include_directories(../ExampleLib)

