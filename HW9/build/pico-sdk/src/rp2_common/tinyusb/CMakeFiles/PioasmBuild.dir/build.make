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
CMAKE_SOURCE_DIR = C:/Users/17155/ME433/Hongyuan-Qi/HW9

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/17155/ME433/Hongyuan-Qi/HW9/build

# Utility rule file for PioasmBuild.

# Include any custom commands dependencies for this target.
include pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild.dir/compiler_depend.make

# Include the progress variables for this target.
include pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild.dir/progress.make

pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild: pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild-complete

pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild-complete: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-install
pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild-complete: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-mkdir
pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild-complete: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-download
pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild-complete: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-update
pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild-complete: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-patch
pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild-complete: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-configure
pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild-complete: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-build
pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild-complete: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-install
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'PioasmBuild'"
	cd C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb && "C:/Program Files/CMake/bin/cmake.exe" -E make_directory C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb/CMakeFiles
	cd C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb && "C:/Program Files/CMake/bin/cmake.exe" -E touch C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild-complete
	cd C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb && "C:/Program Files/CMake/bin/cmake.exe" -E touch C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-done

pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-build: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing build step for 'PioasmBuild'"
	cd C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pioasm && $(MAKE)

pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-configure: pico-sdk/src/rp2_common/tinyusb/pioasm/tmp/PioasmBuild-cfgcmd.txt
pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-configure: pico-sdk/src/rp2_common/tinyusb/pioasm/tmp/PioasmBuild-cache-Debug.cmake
pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-configure: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Performing configure step for 'PioasmBuild'"
	cd C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pioasm && "C:/Program Files/CMake/bin/cmake.exe" -DCMAKE_MAKE_PROGRAM:FILEPATH=C:/Users/17155/GnuWin32/bin/make.exe "-GUnix Makefiles" -CC:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb/pioasm/tmp/PioasmBuild-cache-Debug.cmake -S C:/Users/17155/ME433/Pico/pico-sdk/tools/pioasm -B C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pioasm
	cd C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pioasm && "C:/Program Files/CMake/bin/cmake.exe" -E touch C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-configure

pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-download: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-source_dirinfo.txt
pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-download: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'PioasmBuild'"
	cd C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb && "C:/Program Files/CMake/bin/cmake.exe" -E echo_append
	cd C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb && "C:/Program Files/CMake/bin/cmake.exe" -E touch C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-download

pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-install: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-build
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'PioasmBuild'"
	cd C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pioasm && "C:/Program Files/CMake/bin/cmake.exe" -E echo_append

pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'PioasmBuild'"
	cd C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb && "C:/Program Files/CMake/bin/cmake.exe" -Dcfgdir= -P C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb/pioasm/tmp/PioasmBuild-mkdirs.cmake
	cd C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb && "C:/Program Files/CMake/bin/cmake.exe" -E touch C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-mkdir

pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-patch: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-patch-info.txt
pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-patch: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-update
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'PioasmBuild'"
	cd C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb && "C:/Program Files/CMake/bin/cmake.exe" -E echo_append
	cd C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb && "C:/Program Files/CMake/bin/cmake.exe" -E touch C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-patch

pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-update: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-update-info.txt
pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-update: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-download
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No update step for 'PioasmBuild'"
	cd C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb && "C:/Program Files/CMake/bin/cmake.exe" -E echo_append
	cd C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb && "C:/Program Files/CMake/bin/cmake.exe" -E touch C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-update

PioasmBuild: pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild
PioasmBuild: pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild-complete
PioasmBuild: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-build
PioasmBuild: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-configure
PioasmBuild: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-download
PioasmBuild: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-install
PioasmBuild: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-mkdir
PioasmBuild: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-patch
PioasmBuild: pico-sdk/src/rp2_common/tinyusb/pioasm/src/PioasmBuild-stamp/PioasmBuild-update
PioasmBuild: pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild.dir/build.make
.PHONY : PioasmBuild

# Rule to build all files generated by this target.
pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild.dir/build: PioasmBuild
.PHONY : pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild.dir/build

pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild.dir/clean:
	cd C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb && $(CMAKE_COMMAND) -P CMakeFiles/PioasmBuild.dir/cmake_clean.cmake
.PHONY : pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild.dir/clean

pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/17155/ME433/Hongyuan-Qi/HW9 C:/Users/17155/ME433/Pico/pico-sdk/src/rp2_common/tinyusb C:/Users/17155/ME433/Hongyuan-Qi/HW9/build C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb C:/Users/17155/ME433/Hongyuan-Qi/HW9/build/pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : pico-sdk/src/rp2_common/tinyusb/CMakeFiles/PioasmBuild.dir/depend

