# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/17155/ME433/Pico/pico-sdk/tools/elf2uf2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/17155/ME433/Hongyuan-Qi/HW16/build/elf2uf2

# Include any dependencies generated for this target.
include CMakeFiles/elf2uf2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/elf2uf2.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/elf2uf2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/elf2uf2.dir/flags.make

CMakeFiles/elf2uf2.dir/main.cpp.obj: CMakeFiles/elf2uf2.dir/flags.make
CMakeFiles/elf2uf2.dir/main.cpp.obj: CMakeFiles/elf2uf2.dir/includes_CXX.rsp
CMakeFiles/elf2uf2.dir/main.cpp.obj: C:/Users/17155/ME433/Pico/pico-sdk/tools/elf2uf2/main.cpp
CMakeFiles/elf2uf2.dir/main.cpp.obj: CMakeFiles/elf2uf2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:/Users/17155/ME433/Hongyuan-Qi/HW16/build/elf2uf2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/elf2uf2.dir/main.cpp.obj"
	C:/Users/17155/Desktop/x86_64-13.2.0-release-posix-seh-msvcrt-rt_v11-rev0/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/elf2uf2.dir/main.cpp.obj -MF CMakeFiles/elf2uf2.dir/main.cpp.obj.d -o CMakeFiles/elf2uf2.dir/main.cpp.obj -c C:/Users/17155/ME433/Pico/pico-sdk/tools/elf2uf2/main.cpp

CMakeFiles/elf2uf2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/elf2uf2.dir/main.cpp.i"
	C:/Users/17155/Desktop/x86_64-13.2.0-release-posix-seh-msvcrt-rt_v11-rev0/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/17155/ME433/Pico/pico-sdk/tools/elf2uf2/main.cpp > CMakeFiles/elf2uf2.dir/main.cpp.i

CMakeFiles/elf2uf2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/elf2uf2.dir/main.cpp.s"
	C:/Users/17155/Desktop/x86_64-13.2.0-release-posix-seh-msvcrt-rt_v11-rev0/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/17155/ME433/Pico/pico-sdk/tools/elf2uf2/main.cpp -o CMakeFiles/elf2uf2.dir/main.cpp.s

# Object files for target elf2uf2
elf2uf2_OBJECTS = \
"CMakeFiles/elf2uf2.dir/main.cpp.obj"

# External object files for target elf2uf2
elf2uf2_EXTERNAL_OBJECTS =

elf2uf2.exe: CMakeFiles/elf2uf2.dir/main.cpp.obj
elf2uf2.exe: CMakeFiles/elf2uf2.dir/build.make
elf2uf2.exe: CMakeFiles/elf2uf2.dir/linkLibs.rsp
elf2uf2.exe: CMakeFiles/elf2uf2.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:/Users/17155/ME433/Hongyuan-Qi/HW16/build/elf2uf2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable elf2uf2.exe"
	"C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/elf2uf2.dir/objects.a
	C:/Users/17155/Desktop/x86_64-13.2.0-release-posix-seh-msvcrt-rt_v11-rev0/mingw64/bin/ar.exe qc CMakeFiles/elf2uf2.dir/objects.a @CMakeFiles/elf2uf2.dir/objects1.rsp
	C:/Users/17155/Desktop/x86_64-13.2.0-release-posix-seh-msvcrt-rt_v11-rev0/mingw64/bin/c++.exe -Wl,--whole-archive CMakeFiles/elf2uf2.dir/objects.a -Wl,--no-whole-archive -o elf2uf2.exe -Wl,--out-implib,libelf2uf2.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/elf2uf2.dir/linkLibs.rsp

# Rule to build all files generated by this target.
CMakeFiles/elf2uf2.dir/build: elf2uf2.exe
.PHONY : CMakeFiles/elf2uf2.dir/build

CMakeFiles/elf2uf2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/elf2uf2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/elf2uf2.dir/clean

CMakeFiles/elf2uf2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/17155/ME433/Pico/pico-sdk/tools/elf2uf2 C:/Users/17155/ME433/Pico/pico-sdk/tools/elf2uf2 C:/Users/17155/ME433/Hongyuan-Qi/HW16/build/elf2uf2 C:/Users/17155/ME433/Hongyuan-Qi/HW16/build/elf2uf2 C:/Users/17155/ME433/Hongyuan-Qi/HW16/build/elf2uf2/CMakeFiles/elf2uf2.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/elf2uf2.dir/depend

