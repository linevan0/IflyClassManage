# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /home/lllya/clion-2020.2.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/lllya/clion-2020.2.4/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lllya/IflyClassManage

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lllya/IflyClassManage

# Include any dependencies generated for this target.
include CMakeFiles/iflytek_awaken_asr.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/iflytek_awaken_asr.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/iflytek_awaken_asr.dir/flags.make

CMakeFiles/iflytek_awaken_asr.dir/src/awaken.c.o: CMakeFiles/iflytek_awaken_asr.dir/flags.make
CMakeFiles/iflytek_awaken_asr.dir/src/awaken.c.o: src/awaken.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lllya/IflyClassManage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/iflytek_awaken_asr.dir/src/awaken.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iflytek_awaken_asr.dir/src/awaken.c.o   -c /home/lllya/IflyClassManage/src/awaken.c

CMakeFiles/iflytek_awaken_asr.dir/src/awaken.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iflytek_awaken_asr.dir/src/awaken.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lllya/IflyClassManage/src/awaken.c > CMakeFiles/iflytek_awaken_asr.dir/src/awaken.c.i

CMakeFiles/iflytek_awaken_asr.dir/src/awaken.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iflytek_awaken_asr.dir/src/awaken.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lllya/IflyClassManage/src/awaken.c -o CMakeFiles/iflytek_awaken_asr.dir/src/awaken.c.s

CMakeFiles/iflytek_awaken_asr.dir/src/linuxrec.c.o: CMakeFiles/iflytek_awaken_asr.dir/flags.make
CMakeFiles/iflytek_awaken_asr.dir/src/linuxrec.c.o: src/linuxrec.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lllya/IflyClassManage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/iflytek_awaken_asr.dir/src/linuxrec.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iflytek_awaken_asr.dir/src/linuxrec.c.o   -c /home/lllya/IflyClassManage/src/linuxrec.c

CMakeFiles/iflytek_awaken_asr.dir/src/linuxrec.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iflytek_awaken_asr.dir/src/linuxrec.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lllya/IflyClassManage/src/linuxrec.c > CMakeFiles/iflytek_awaken_asr.dir/src/linuxrec.c.i

CMakeFiles/iflytek_awaken_asr.dir/src/linuxrec.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iflytek_awaken_asr.dir/src/linuxrec.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lllya/IflyClassManage/src/linuxrec.c -o CMakeFiles/iflytek_awaken_asr.dir/src/linuxrec.c.s

CMakeFiles/iflytek_awaken_asr.dir/src/main.c.o: CMakeFiles/iflytek_awaken_asr.dir/flags.make
CMakeFiles/iflytek_awaken_asr.dir/src/main.c.o: src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lllya/IflyClassManage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/iflytek_awaken_asr.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iflytek_awaken_asr.dir/src/main.c.o   -c /home/lllya/IflyClassManage/src/main.c

CMakeFiles/iflytek_awaken_asr.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iflytek_awaken_asr.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lllya/IflyClassManage/src/main.c > CMakeFiles/iflytek_awaken_asr.dir/src/main.c.i

CMakeFiles/iflytek_awaken_asr.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iflytek_awaken_asr.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lllya/IflyClassManage/src/main.c -o CMakeFiles/iflytek_awaken_asr.dir/src/main.c.s

CMakeFiles/iflytek_awaken_asr.dir/src/play_audio.c.o: CMakeFiles/iflytek_awaken_asr.dir/flags.make
CMakeFiles/iflytek_awaken_asr.dir/src/play_audio.c.o: src/play_audio.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lllya/IflyClassManage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/iflytek_awaken_asr.dir/src/play_audio.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iflytek_awaken_asr.dir/src/play_audio.c.o   -c /home/lllya/IflyClassManage/src/play_audio.c

CMakeFiles/iflytek_awaken_asr.dir/src/play_audio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iflytek_awaken_asr.dir/src/play_audio.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lllya/IflyClassManage/src/play_audio.c > CMakeFiles/iflytek_awaken_asr.dir/src/play_audio.c.i

CMakeFiles/iflytek_awaken_asr.dir/src/play_audio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iflytek_awaken_asr.dir/src/play_audio.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lllya/IflyClassManage/src/play_audio.c -o CMakeFiles/iflytek_awaken_asr.dir/src/play_audio.c.s

CMakeFiles/iflytek_awaken_asr.dir/src/speech_recognizer.c.o: CMakeFiles/iflytek_awaken_asr.dir/flags.make
CMakeFiles/iflytek_awaken_asr.dir/src/speech_recognizer.c.o: src/speech_recognizer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lllya/IflyClassManage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/iflytek_awaken_asr.dir/src/speech_recognizer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iflytek_awaken_asr.dir/src/speech_recognizer.c.o   -c /home/lllya/IflyClassManage/src/speech_recognizer.c

CMakeFiles/iflytek_awaken_asr.dir/src/speech_recognizer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iflytek_awaken_asr.dir/src/speech_recognizer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lllya/IflyClassManage/src/speech_recognizer.c > CMakeFiles/iflytek_awaken_asr.dir/src/speech_recognizer.c.i

CMakeFiles/iflytek_awaken_asr.dir/src/speech_recognizer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iflytek_awaken_asr.dir/src/speech_recognizer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lllya/IflyClassManage/src/speech_recognizer.c -o CMakeFiles/iflytek_awaken_asr.dir/src/speech_recognizer.c.s

CMakeFiles/iflytek_awaken_asr.dir/src/tts.c.o: CMakeFiles/iflytek_awaken_asr.dir/flags.make
CMakeFiles/iflytek_awaken_asr.dir/src/tts.c.o: src/tts.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lllya/IflyClassManage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/iflytek_awaken_asr.dir/src/tts.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iflytek_awaken_asr.dir/src/tts.c.o   -c /home/lllya/IflyClassManage/src/tts.c

CMakeFiles/iflytek_awaken_asr.dir/src/tts.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iflytek_awaken_asr.dir/src/tts.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lllya/IflyClassManage/src/tts.c > CMakeFiles/iflytek_awaken_asr.dir/src/tts.c.i

CMakeFiles/iflytek_awaken_asr.dir/src/tts.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iflytek_awaken_asr.dir/src/tts.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lllya/IflyClassManage/src/tts.c -o CMakeFiles/iflytek_awaken_asr.dir/src/tts.c.s

CMakeFiles/iflytek_awaken_asr.dir/src/iat.c.o: CMakeFiles/iflytek_awaken_asr.dir/flags.make
CMakeFiles/iflytek_awaken_asr.dir/src/iat.c.o: src/iat.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lllya/IflyClassManage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/iflytek_awaken_asr.dir/src/iat.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iflytek_awaken_asr.dir/src/iat.c.o   -c /home/lllya/IflyClassManage/src/iat.c

CMakeFiles/iflytek_awaken_asr.dir/src/iat.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iflytek_awaken_asr.dir/src/iat.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lllya/IflyClassManage/src/iat.c > CMakeFiles/iflytek_awaken_asr.dir/src/iat.c.i

CMakeFiles/iflytek_awaken_asr.dir/src/iat.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iflytek_awaken_asr.dir/src/iat.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lllya/IflyClassManage/src/iat.c -o CMakeFiles/iflytek_awaken_asr.dir/src/iat.c.s

CMakeFiles/iflytek_awaken_asr.dir/src/cJSON.c.o: CMakeFiles/iflytek_awaken_asr.dir/flags.make
CMakeFiles/iflytek_awaken_asr.dir/src/cJSON.c.o: src/cJSON.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lllya/IflyClassManage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/iflytek_awaken_asr.dir/src/cJSON.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iflytek_awaken_asr.dir/src/cJSON.c.o   -c /home/lllya/IflyClassManage/src/cJSON.c

CMakeFiles/iflytek_awaken_asr.dir/src/cJSON.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iflytek_awaken_asr.dir/src/cJSON.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lllya/IflyClassManage/src/cJSON.c > CMakeFiles/iflytek_awaken_asr.dir/src/cJSON.c.i

CMakeFiles/iflytek_awaken_asr.dir/src/cJSON.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iflytek_awaken_asr.dir/src/cJSON.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lllya/IflyClassManage/src/cJSON.c -o CMakeFiles/iflytek_awaken_asr.dir/src/cJSON.c.s

CMakeFiles/iflytek_awaken_asr.dir/src/myxml.c.o: CMakeFiles/iflytek_awaken_asr.dir/flags.make
CMakeFiles/iflytek_awaken_asr.dir/src/myxml.c.o: src/myxml.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lllya/IflyClassManage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/iflytek_awaken_asr.dir/src/myxml.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iflytek_awaken_asr.dir/src/myxml.c.o   -c /home/lllya/IflyClassManage/src/myxml.c

CMakeFiles/iflytek_awaken_asr.dir/src/myxml.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iflytek_awaken_asr.dir/src/myxml.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lllya/IflyClassManage/src/myxml.c > CMakeFiles/iflytek_awaken_asr.dir/src/myxml.c.i

CMakeFiles/iflytek_awaken_asr.dir/src/myxml.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iflytek_awaken_asr.dir/src/myxml.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lllya/IflyClassManage/src/myxml.c -o CMakeFiles/iflytek_awaken_asr.dir/src/myxml.c.s

CMakeFiles/iflytek_awaken_asr.dir/src/myjson.c.o: CMakeFiles/iflytek_awaken_asr.dir/flags.make
CMakeFiles/iflytek_awaken_asr.dir/src/myjson.c.o: src/myjson.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lllya/IflyClassManage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/iflytek_awaken_asr.dir/src/myjson.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iflytek_awaken_asr.dir/src/myjson.c.o   -c /home/lllya/IflyClassManage/src/myjson.c

CMakeFiles/iflytek_awaken_asr.dir/src/myjson.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iflytek_awaken_asr.dir/src/myjson.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lllya/IflyClassManage/src/myjson.c > CMakeFiles/iflytek_awaken_asr.dir/src/myjson.c.i

CMakeFiles/iflytek_awaken_asr.dir/src/myjson.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iflytek_awaken_asr.dir/src/myjson.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lllya/IflyClassManage/src/myjson.c -o CMakeFiles/iflytek_awaken_asr.dir/src/myjson.c.s

CMakeFiles/iflytek_awaken_asr.dir/src/myurl.c.o: CMakeFiles/iflytek_awaken_asr.dir/flags.make
CMakeFiles/iflytek_awaken_asr.dir/src/myurl.c.o: src/myurl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lllya/IflyClassManage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/iflytek_awaken_asr.dir/src/myurl.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iflytek_awaken_asr.dir/src/myurl.c.o   -c /home/lllya/IflyClassManage/src/myurl.c

CMakeFiles/iflytek_awaken_asr.dir/src/myurl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iflytek_awaken_asr.dir/src/myurl.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lllya/IflyClassManage/src/myurl.c > CMakeFiles/iflytek_awaken_asr.dir/src/myurl.c.i

CMakeFiles/iflytek_awaken_asr.dir/src/myurl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iflytek_awaken_asr.dir/src/myurl.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lllya/IflyClassManage/src/myurl.c -o CMakeFiles/iflytek_awaken_asr.dir/src/myurl.c.s

CMakeFiles/iflytek_awaken_asr.dir/src/myhttp.c.o: CMakeFiles/iflytek_awaken_asr.dir/flags.make
CMakeFiles/iflytek_awaken_asr.dir/src/myhttp.c.o: src/myhttp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lllya/IflyClassManage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/iflytek_awaken_asr.dir/src/myhttp.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iflytek_awaken_asr.dir/src/myhttp.c.o   -c /home/lllya/IflyClassManage/src/myhttp.c

CMakeFiles/iflytek_awaken_asr.dir/src/myhttp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iflytek_awaken_asr.dir/src/myhttp.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lllya/IflyClassManage/src/myhttp.c > CMakeFiles/iflytek_awaken_asr.dir/src/myhttp.c.i

CMakeFiles/iflytek_awaken_asr.dir/src/myhttp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iflytek_awaken_asr.dir/src/myhttp.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lllya/IflyClassManage/src/myhttp.c -o CMakeFiles/iflytek_awaken_asr.dir/src/myhttp.c.s

CMakeFiles/iflytek_awaken_asr.dir/src/timer.c.o: CMakeFiles/iflytek_awaken_asr.dir/flags.make
CMakeFiles/iflytek_awaken_asr.dir/src/timer.c.o: src/timer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lllya/IflyClassManage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/iflytek_awaken_asr.dir/src/timer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/iflytek_awaken_asr.dir/src/timer.c.o   -c /home/lllya/IflyClassManage/src/timer.c

CMakeFiles/iflytek_awaken_asr.dir/src/timer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iflytek_awaken_asr.dir/src/timer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lllya/IflyClassManage/src/timer.c > CMakeFiles/iflytek_awaken_asr.dir/src/timer.c.i

CMakeFiles/iflytek_awaken_asr.dir/src/timer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iflytek_awaken_asr.dir/src/timer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lllya/IflyClassManage/src/timer.c -o CMakeFiles/iflytek_awaken_asr.dir/src/timer.c.s

# Object files for target iflytek_awaken_asr
iflytek_awaken_asr_OBJECTS = \
"CMakeFiles/iflytek_awaken_asr.dir/src/awaken.c.o" \
"CMakeFiles/iflytek_awaken_asr.dir/src/linuxrec.c.o" \
"CMakeFiles/iflytek_awaken_asr.dir/src/main.c.o" \
"CMakeFiles/iflytek_awaken_asr.dir/src/play_audio.c.o" \
"CMakeFiles/iflytek_awaken_asr.dir/src/speech_recognizer.c.o" \
"CMakeFiles/iflytek_awaken_asr.dir/src/tts.c.o" \
"CMakeFiles/iflytek_awaken_asr.dir/src/iat.c.o" \
"CMakeFiles/iflytek_awaken_asr.dir/src/cJSON.c.o" \
"CMakeFiles/iflytek_awaken_asr.dir/src/myxml.c.o" \
"CMakeFiles/iflytek_awaken_asr.dir/src/myjson.c.o" \
"CMakeFiles/iflytek_awaken_asr.dir/src/myurl.c.o" \
"CMakeFiles/iflytek_awaken_asr.dir/src/myhttp.c.o" \
"CMakeFiles/iflytek_awaken_asr.dir/src/timer.c.o"

# External object files for target iflytek_awaken_asr
iflytek_awaken_asr_EXTERNAL_OBJECTS =

bin/iflytek_awaken_asr: CMakeFiles/iflytek_awaken_asr.dir/src/awaken.c.o
bin/iflytek_awaken_asr: CMakeFiles/iflytek_awaken_asr.dir/src/linuxrec.c.o
bin/iflytek_awaken_asr: CMakeFiles/iflytek_awaken_asr.dir/src/main.c.o
bin/iflytek_awaken_asr: CMakeFiles/iflytek_awaken_asr.dir/src/play_audio.c.o
bin/iflytek_awaken_asr: CMakeFiles/iflytek_awaken_asr.dir/src/speech_recognizer.c.o
bin/iflytek_awaken_asr: CMakeFiles/iflytek_awaken_asr.dir/src/tts.c.o
bin/iflytek_awaken_asr: CMakeFiles/iflytek_awaken_asr.dir/src/iat.c.o
bin/iflytek_awaken_asr: CMakeFiles/iflytek_awaken_asr.dir/src/cJSON.c.o
bin/iflytek_awaken_asr: CMakeFiles/iflytek_awaken_asr.dir/src/myxml.c.o
bin/iflytek_awaken_asr: CMakeFiles/iflytek_awaken_asr.dir/src/myjson.c.o
bin/iflytek_awaken_asr: CMakeFiles/iflytek_awaken_asr.dir/src/myurl.c.o
bin/iflytek_awaken_asr: CMakeFiles/iflytek_awaken_asr.dir/src/myhttp.c.o
bin/iflytek_awaken_asr: CMakeFiles/iflytek_awaken_asr.dir/src/timer.c.o
bin/iflytek_awaken_asr: CMakeFiles/iflytek_awaken_asr.dir/build.make
bin/iflytek_awaken_asr: CMakeFiles/iflytek_awaken_asr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lllya/IflyClassManage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking C executable bin/iflytek_awaken_asr"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/iflytek_awaken_asr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/iflytek_awaken_asr.dir/build: bin/iflytek_awaken_asr

.PHONY : CMakeFiles/iflytek_awaken_asr.dir/build

CMakeFiles/iflytek_awaken_asr.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/iflytek_awaken_asr.dir/cmake_clean.cmake
.PHONY : CMakeFiles/iflytek_awaken_asr.dir/clean

CMakeFiles/iflytek_awaken_asr.dir/depend:
	cd /home/lllya/IflyClassManage && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lllya/IflyClassManage /home/lllya/IflyClassManage /home/lllya/IflyClassManage /home/lllya/IflyClassManage /home/lllya/IflyClassManage/CMakeFiles/iflytek_awaken_asr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/iflytek_awaken_asr.dir/depend

