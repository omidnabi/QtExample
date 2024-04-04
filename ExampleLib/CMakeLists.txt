cmake_minimum_required(VERSION 3.14)

project(ExampleLib VERSION 1.0.0 LANGUAGES CXX)

find_package(Qt6 REQUIRED COMPONENTS Core Qml)

set(CMAKE_AUTOMOC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

add_library(ExampleLib SHARED
    ExampleLibClass.cpp
    ExampleLibClass.h
)

target_link_libraries(ExampleLib Qt6::Core Qt6::Qml)

qt6_add_resources(ExampleLib "examplelib"
    PREFIX "/"
    FILES
    ExampleRect.qml
)

