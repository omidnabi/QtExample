cmake_minimum_required(VERSION 3.14)

project(ExampleApp VERSION 1.0.0 LANGUAGES CXX)

find_package(Qt6 REQUIRED COMPONENTS Core Quick)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

# Add the subdirectory for ExampleLib
add_subdirectory(${CMAKE_SOURCE_DIR}/../ExampleLib ${CMAKE_BINARY_DIR}/ExampleLib)

add_executable(ExampleApp
    main.cpp
    qml.qrc
)

# Link against the ExampleLib and Qt libraries
target_link_libraries(ExampleApp Qt6::Core Qt6::Quick ExampleLib)

# Assuming ExampleLib's include files are directly under ExampleLib/
# This will correctly add the path to the target
target_include_directories(ExampleApp PRIVATE ${CMAKE_SOURCE_DIR}/../ExampleLib)

# Add a custom command to run windeployqt after building ExampleApp
add_custom_command(TARGET ExampleApp POST_BUILD
    COMMAND C:\\Qt\\6.7.0\\msvc2019_64\\bin\\windeployqt6.exe $<TARGET_FILE_DIR:ExampleApp>\\$<TARGET_FILE_NAME:ExampleApp>
)

