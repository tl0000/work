# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tl/sqlite

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tl/sqlite/build

# Include any dependencies generated for this target.
include func/CMakeFiles/testFunc_shared.dir/depend.make

# Include the progress variables for this target.
include func/CMakeFiles/testFunc_shared.dir/progress.make

# Include the compile flags for this target's objects.
include func/CMakeFiles/testFunc_shared.dir/flags.make

func/CMakeFiles/testFunc_shared.dir/func.cpp.o: func/CMakeFiles/testFunc_shared.dir/flags.make
func/CMakeFiles/testFunc_shared.dir/func.cpp.o: ../func/func.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tl/sqlite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object func/CMakeFiles/testFunc_shared.dir/func.cpp.o"
	cd /home/tl/sqlite/build/func && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testFunc_shared.dir/func.cpp.o -c /home/tl/sqlite/func/func.cpp

func/CMakeFiles/testFunc_shared.dir/func.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testFunc_shared.dir/func.cpp.i"
	cd /home/tl/sqlite/build/func && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tl/sqlite/func/func.cpp > CMakeFiles/testFunc_shared.dir/func.cpp.i

func/CMakeFiles/testFunc_shared.dir/func.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testFunc_shared.dir/func.cpp.s"
	cd /home/tl/sqlite/build/func && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tl/sqlite/func/func.cpp -o CMakeFiles/testFunc_shared.dir/func.cpp.s

func/CMakeFiles/testFunc_shared.dir/func.cpp.o.requires:

.PHONY : func/CMakeFiles/testFunc_shared.dir/func.cpp.o.requires

func/CMakeFiles/testFunc_shared.dir/func.cpp.o.provides: func/CMakeFiles/testFunc_shared.dir/func.cpp.o.requires
	$(MAKE) -f func/CMakeFiles/testFunc_shared.dir/build.make func/CMakeFiles/testFunc_shared.dir/func.cpp.o.provides.build
.PHONY : func/CMakeFiles/testFunc_shared.dir/func.cpp.o.provides

func/CMakeFiles/testFunc_shared.dir/func.cpp.o.provides.build: func/CMakeFiles/testFunc_shared.dir/func.cpp.o


# Object files for target testFunc_shared
testFunc_shared_OBJECTS = \
"CMakeFiles/testFunc_shared.dir/func.cpp.o"

# External object files for target testFunc_shared
testFunc_shared_EXTERNAL_OBJECTS =

../lib/libtestFunc.so: func/CMakeFiles/testFunc_shared.dir/func.cpp.o
../lib/libtestFunc.so: func/CMakeFiles/testFunc_shared.dir/build.make
../lib/libtestFunc.so: func/CMakeFiles/testFunc_shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tl/sqlite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../lib/libtestFunc.so"
	cd /home/tl/sqlite/build/func && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testFunc_shared.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
func/CMakeFiles/testFunc_shared.dir/build: ../lib/libtestFunc.so

.PHONY : func/CMakeFiles/testFunc_shared.dir/build

func/CMakeFiles/testFunc_shared.dir/requires: func/CMakeFiles/testFunc_shared.dir/func.cpp.o.requires

.PHONY : func/CMakeFiles/testFunc_shared.dir/requires

func/CMakeFiles/testFunc_shared.dir/clean:
	cd /home/tl/sqlite/build/func && $(CMAKE_COMMAND) -P CMakeFiles/testFunc_shared.dir/cmake_clean.cmake
.PHONY : func/CMakeFiles/testFunc_shared.dir/clean

func/CMakeFiles/testFunc_shared.dir/depend:
	cd /home/tl/sqlite/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tl/sqlite /home/tl/sqlite/func /home/tl/sqlite/build /home/tl/sqlite/build/func /home/tl/sqlite/build/func/CMakeFiles/testFunc_shared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : func/CMakeFiles/testFunc_shared.dir/depend

