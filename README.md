# Documenting the Qt6 Example Application and Library with CMake

This document provides a comprehensive overview of a Qt6-based project comprising two main components: a shared library (`ExampleLib`) and an application (`ExampleApp`). It details the structure, purpose, and interrelation of these components, as well as the configuration required to build them using CMake. This example serves as a practical guide for managing dependencies and modular development in C++ projects using Qt6 and CMake.

## Project Overview

The project is organized into two primary directories, each containing one of the project components:

- **ExampleLib**: A shared library providing foundational functionality, including a class (`ExampleLibClass`) and a QML component (`ExampleRect`).
- **ExampleApp**: A standalone application that utilizes `ExampleLib` by integrating its class and displaying its QML component.

### ExampleLib: The Shared Library

`ExampleLib` is designed as a shared library to encapsulate reusable code that can be shared across different applications. It contains a C++ class and a QML component, making it a versatile piece of the project's architecture.

#### Structure

- **CMakeLists.txt**: Defines the build instructions for the library, including Qt6 module dependencies (Core, Qml), source files, and the setup for making the QML component available.
- **ExampleLibClass.cpp/h**: Implements a basic Qt class with QObject as its base, demonstrating a simple example of a Qt class that could be expanded with more functionality.
- **ExampleRect.qml**: A QML Rectangle component, showcasing how QML components can be defined within a library and utilized in applications.

#### Key Concepts

- **CMake Configuration**: The library's `CMakeLists.txt` employs `qt6_add_resources` for including QML files into the library, ensuring that these components are available when the library is used by an application.
- **Shared Library**: As a shared library, `ExampleLib` can be dynamically linked by multiple applications. This allows for code reuse and modular development practices.

### ExampleApp: The Application

`ExampleApp` demonstrates how to integrate and use the functionality provided by `ExampleLib`. It is a Qt Quick application that creates an instance of `ExampleLibClass` and displays `ExampleRect`.

#### Structure

- **CMakeLists.txt**: Configures the application build process, including locating and linking against `ExampleLib`, and setting up the application's QML environment.
- **main.cpp**: The entry point of the application, which initializes the Qt framework and sets up the QML engine.
- **main.qml**: A QML file that uses the `ExampleRect` component from `ExampleLib`.
- **qml.qrc**: A Qt resource file that includes `main.qml` for use in the application.

#### Key Concepts

- **Linking Against ExampleLib**: The application's `CMakeLists.txt` demonstrates how to include and link against an external library within a Qt project.
- **Qt Quick Application**: The application leverages Qt Quick for its UI, illustrating how to integrate QML components from a library into an application's user interface.

## Linking Between ExampleLib and ExampleApp

The interconnection between `ExampleLib` and `ExampleApp` is established through CMake's build configuration. This section explains the mechanisms that enable this linking and the use of library components within the application.

### CMake Configuration

The CMake files play a crucial role in linking the application with the library. Here are the key points in this process:

- **Including the Library**: `ExampleApp`'s `CMakeLists.txt` includes `ExampleLib` via `add_subdirectory`. This tells CMake to process `ExampleLib`'s `CMakeLists.txt`, building the library as part of the project.
- **Linking**: The application links against `ExampleLib` using `target_link_libraries`. This makes the library's compiled code and header files accessible to the application, enabling it to use `ExampleLibClass` and `ExampleRect`.

### Usage in Application

Within `ExampleApp`, the library's components are utilized as follows:

- **ExampleLibClass**: An instance of this class can be created and used directly in the application's C++ code. This demonstrates simple class usage from a shared library.
- **ExampleRect QML Component**: By registering the component with the QML engine and including the library's QML files via resources, `ExampleRect` can be used within the application's QML files as if it were a native QML component.

## Conclusion

This project illustrates a fundamental structure for a Qt6 application and library, showcasing how to organize, build, and link them using CMake. The key takeaway is the importance of CMake in managing project dependencies, compilation, and linking processes, facilitating modular and reusable code development practices in C++ and QML with Qt6. Through detailed CMake configurations and careful project structure, developers can efficiently create scalable and maintainable Qt applications and libraries.
