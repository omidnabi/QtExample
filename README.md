<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Qt6 Example Application and Library Documentation</title>
</head>
<body>
    <h1>Documenting the Qt6 Example Application and Library with CMake</h1>
    <p>This document provides a comprehensive overview of a Qt6-based project comprising two main components: a shared library (<code>ExampleLib</code>) and an application (<code>ExampleApp</code>). It details the structure, purpose, and interrelation of these components, as well as the configuration required to build them using CMake. This example serves as a practical guide for managing dependencies and modular development in C++ projects using Qt6 and CMake.</p>

    <h2>Project Overview</h2>
    <p>The project is organized into two primary directories, each containing one of the project components:</p>
    <ul>
        <li><strong>ExampleLib</strong>: A shared library providing foundational functionality, including a class (<code>ExampleLibClass</code>) and a QML component (<code>ExampleRect</code>).</li>
        <li><strong>ExampleApp</strong>: A standalone application that utilizes <code>ExampleLib</code> by integrating its class and displaying its QML component.</li>
    </ul>

    <h3>ExampleLib: The Shared Library</h3>
    <p><code>ExampleLib</code> is designed as a shared library to encapsulate reusable code that can be shared across different applications. It contains a C++ class and a QML component, making it a versatile piece of the project's architecture.</p>
    <h4>Structure</h4>
    <ul>
        <li><strong>CMakeLists.txt</strong>: Defines the build instructions for the library, including Qt6 module dependencies (Core, Qml), source files, and the setup for making the QML component available.</li>
        <li><strong>ExampleLibClass.cpp/h</strong>: Implements a basic Qt class with QObject as its base, demonstrating a simple example of a Qt class that could be expanded with more functionality.</li>
        <li><strong>ExampleRect.qml</strong>: A QML Rectangle component, showcasing how QML components can be defined within a library and utilized in applications.</li>
    </ul>
    <h4>Key Concepts</h4>
    <ul>
        <li><strong>CMake Configuration</strong>: The library's <code>CMakeLists.txt</code> employs <code>qt6_add_resources</code> for including QML files into the library, ensuring that these components are available when the library is used by an application.</li>
        <li><strong>Shared Library</strong>: As a shared library, <code>ExampleLib</code> can be dynamically linked by multiple applications. This allows for code reuse and modular development practices.</li>
    </ul>

    <h3>ExampleApp: The Application</h3>
    <p><code>ExampleApp</code> demonstrates how to integrate and use the functionality provided by <code>ExampleLib</code>. It is a Qt Quick application that creates an instance of <code>ExampleLibClass</code> and displays <code>ExampleRect</code>.</p>
    <h4>Structure</h4>
    <ul>
        <li><strong>CMakeLists.txt</strong>: Configures the application build process, including locating and linking against <code>ExampleLib</code>, and setting up the application's QML environment.</li>
        <li><strong>main.cpp</strong>: The entry point of the application, which initializes the Qt framework and sets up the QML engine.</li>
        <li><strong>main.qml</strong>: A QML file that uses the <code>ExampleRect</code> component from <code>ExampleLib</code>.</li>
        <li><strong>qml.qrc</strong>: A Qt resource file that includes <code>main.qml</code> for use in the application.</li>
    </ul>
    <h4>Key Concepts</h4>
    <ul>
        <li><strong>Linking Against ExampleLib</strong>: The application's <code>CMakeLists.txt</code> demonstrates how to include and link against an external library within a Qt project.</li>
        <li><strong>Qt Quick Application</strong>: The application leverages Qt Quick for its UI, illustrating how to integrate QML components from a library into an application's user interface.</li>
    </ul>

    <h2>Linking Between ExampleLib and ExampleApp</h2>
    <p>The interconnection between <code>ExampleLib</code> and <code>ExampleApp</code> is established through CMake's build configuration. This section explains the mechanisms that enable this linking and the use of library components within the application.</p>
    <h3>CMake Configuration</h3>
    <p>The CMake files play a crucial role in linking the application with the library. Here are the key points in this process:</p>
    <ul>
        <li><strong>Including the Library</strong>: <code>ExampleApp</code>'s <code>CMakeLists.txt</code> includes <code>ExampleLib</code> via <code>add_subdirectory</code>. This tells CMake to process <code>ExampleLib</code>'s <code>CMakeLists.txt</code>, building the library as part of the project.</li>
        <li><strong>Linking</strong>: The application links against <code>ExampleLib</code> using <code>target_link_libraries</code>. This makes the library's compiled code and header files accessible to the application, enabling it to use <code>ExampleLibClass</code> and <code>ExampleRect</code>.</li>
    </ul>
    <h3>Usage in Application</h3>
    <p>Within <code>ExampleApp</code>, the library's components are utilized as follows:</p>
    <ul>
        <li><strong>ExampleLibClass</strong>: An instance of this class can be created and used directly in the application's C++ code. This demonstrates simple class usage from a shared library.</li>
        <li><strong>ExampleRect QML Component</strong>: By registering the component with the QML engine and including the library's QML files via resources, <code>ExampleRect</code> can be used within the application's QML files as if it were a native QML component.</li>
    </ul>

    <h2>Conclusion</h2>
    <p>This project illustrates a fundamental structure for a Qt6 application and library, showcasing how to organize, build, and link them using CMake. The key takeaway is the importance of CMake in managing project dependencies, compilation, and linking processes, facilitating modular and reusable code development practices in C++ and QML with Qt6. Through detailed CMake configurations and careful project structure, developers can efficiently create scalable and maintainable Qt applications and libraries.</p>
</body>
</html>

