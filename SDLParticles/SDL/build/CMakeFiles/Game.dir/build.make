# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.7/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.7/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/build

# Include any dependencies generated for this target.
include CMakeFiles/Game.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Game.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Game.dir/flags.make

CMakeFiles/Game.dir/src/Swarm.cpp.o: CMakeFiles/Game.dir/flags.make
CMakeFiles/Game.dir/src/Swarm.cpp.o: ../src/Swarm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Game.dir/src/Swarm.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Game.dir/src/Swarm.cpp.o -c /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/src/Swarm.cpp

CMakeFiles/Game.dir/src/Swarm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Game.dir/src/Swarm.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/src/Swarm.cpp > CMakeFiles/Game.dir/src/Swarm.cpp.i

CMakeFiles/Game.dir/src/Swarm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Game.dir/src/Swarm.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/src/Swarm.cpp -o CMakeFiles/Game.dir/src/Swarm.cpp.s

CMakeFiles/Game.dir/src/main.cpp.o: CMakeFiles/Game.dir/flags.make
CMakeFiles/Game.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Game.dir/src/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Game.dir/src/main.cpp.o -c /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/src/main.cpp

CMakeFiles/Game.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Game.dir/src/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/src/main.cpp > CMakeFiles/Game.dir/src/main.cpp.i

CMakeFiles/Game.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Game.dir/src/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/src/main.cpp -o CMakeFiles/Game.dir/src/main.cpp.s

CMakeFiles/Game.dir/src/particle.cpp.o: CMakeFiles/Game.dir/flags.make
CMakeFiles/Game.dir/src/particle.cpp.o: ../src/particle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Game.dir/src/particle.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Game.dir/src/particle.cpp.o -c /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/src/particle.cpp

CMakeFiles/Game.dir/src/particle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Game.dir/src/particle.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/src/particle.cpp > CMakeFiles/Game.dir/src/particle.cpp.i

CMakeFiles/Game.dir/src/particle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Game.dir/src/particle.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/src/particle.cpp -o CMakeFiles/Game.dir/src/particle.cpp.s

CMakeFiles/Game.dir/src/screen.cpp.o: CMakeFiles/Game.dir/flags.make
CMakeFiles/Game.dir/src/screen.cpp.o: ../src/screen.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Game.dir/src/screen.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Game.dir/src/screen.cpp.o -c /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/src/screen.cpp

CMakeFiles/Game.dir/src/screen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Game.dir/src/screen.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/src/screen.cpp > CMakeFiles/Game.dir/src/screen.cpp.i

CMakeFiles/Game.dir/src/screen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Game.dir/src/screen.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/src/screen.cpp -o CMakeFiles/Game.dir/src/screen.cpp.s

# Object files for target Game
Game_OBJECTS = \
"CMakeFiles/Game.dir/src/Swarm.cpp.o" \
"CMakeFiles/Game.dir/src/main.cpp.o" \
"CMakeFiles/Game.dir/src/particle.cpp.o" \
"CMakeFiles/Game.dir/src/screen.cpp.o"

# External object files for target Game
Game_EXTERNAL_OBJECTS =

MacOS/Game.app/Contents/MacOS/Game: CMakeFiles/Game.dir/src/Swarm.cpp.o
MacOS/Game.app/Contents/MacOS/Game: CMakeFiles/Game.dir/src/main.cpp.o
MacOS/Game.app/Contents/MacOS/Game: CMakeFiles/Game.dir/src/particle.cpp.o
MacOS/Game.app/Contents/MacOS/Game: CMakeFiles/Game.dir/src/screen.cpp.o
MacOS/Game.app/Contents/MacOS/Game: CMakeFiles/Game.dir/build.make
MacOS/Game.app/Contents/MacOS/Game: ../MacOS/lib/libSDL2-2.0.0.dylib
MacOS/Game.app/Contents/MacOS/Game: CMakeFiles/Game.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable MacOS/Game.app/Contents/MacOS/Game"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Game.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Game.dir/build: MacOS/Game.app/Contents/MacOS/Game

.PHONY : CMakeFiles/Game.dir/build

CMakeFiles/Game.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Game.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Game.dir/clean

CMakeFiles/Game.dir/depend:
	cd /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/build /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/build /Users/Alex/Documents/GitHub/cpp-Projects/SDLParticles/SDL/build/CMakeFiles/Game.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Game.dir/depend

