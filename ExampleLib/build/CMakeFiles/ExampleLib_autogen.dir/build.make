# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/omidnabi/Working/pytorch/confirm/bin/cmake

# The command to remove a file.
RM = /home/omidnabi/Working/pytorch/confirm/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/omidnabi/Working/QtExample/ExampleLib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/omidnabi/Working/QtExample/ExampleLib/build

# Utility rule file for ExampleLib_autogen.

# Include any custom commands dependencies for this target.
include CMakeFiles/ExampleLib_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ExampleLib_autogen.dir/progress.make

CMakeFiles/ExampleLib_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/omidnabi/Working/QtExample/ExampleLib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target ExampleLib"
	/home/omidnabi/Working/pytorch/confirm/bin/cmake -E cmake_autogen /home/omidnabi/Working/QtExample/ExampleLib/build/CMakeFiles/ExampleLib_autogen.dir/AutogenInfo.json ""

ExampleLib_autogen: CMakeFiles/ExampleLib_autogen
ExampleLib_autogen: CMakeFiles/ExampleLib_autogen.dir/build.make
.PHONY : ExampleLib_autogen

# Rule to build all files generated by this target.
CMakeFiles/ExampleLib_autogen.dir/build: ExampleLib_autogen
.PHONY : CMakeFiles/ExampleLib_autogen.dir/build

CMakeFiles/ExampleLib_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ExampleLib_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ExampleLib_autogen.dir/clean

CMakeFiles/ExampleLib_autogen.dir/depend:
	cd /home/omidnabi/Working/QtExample/ExampleLib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/omidnabi/Working/QtExample/ExampleLib /home/omidnabi/Working/QtExample/ExampleLib /home/omidnabi/Working/QtExample/ExampleLib/build /home/omidnabi/Working/QtExample/ExampleLib/build /home/omidnabi/Working/QtExample/ExampleLib/build/CMakeFiles/ExampleLib_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ExampleLib_autogen.dir/depend

