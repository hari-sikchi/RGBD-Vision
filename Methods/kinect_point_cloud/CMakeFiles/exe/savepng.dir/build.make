# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud

# Include any dependencies generated for this target.
include CMakeFiles/exe/savepng.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/exe/savepng.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/exe/savepng.dir/flags.make

CMakeFiles/exe/savepng.dir/src/savepng.cpp.o: CMakeFiles/exe/savepng.dir/flags.make
CMakeFiles/exe/savepng.dir/src/savepng.cpp.o: src/savepng.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/exe/savepng.dir/src/savepng.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/exe/savepng.dir/src/savepng.cpp.o -c /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud/src/savepng.cpp

CMakeFiles/exe/savepng.dir/src/savepng.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/exe/savepng.dir/src/savepng.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud/src/savepng.cpp > CMakeFiles/exe/savepng.dir/src/savepng.cpp.i

CMakeFiles/exe/savepng.dir/src/savepng.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/exe/savepng.dir/src/savepng.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud/src/savepng.cpp -o CMakeFiles/exe/savepng.dir/src/savepng.cpp.s

CMakeFiles/exe/savepng.dir/src/savepng.cpp.o.requires:
.PHONY : CMakeFiles/exe/savepng.dir/src/savepng.cpp.o.requires

CMakeFiles/exe/savepng.dir/src/savepng.cpp.o.provides: CMakeFiles/exe/savepng.dir/src/savepng.cpp.o.requires
	$(MAKE) -f CMakeFiles/exe/savepng.dir/build.make CMakeFiles/exe/savepng.dir/src/savepng.cpp.o.provides.build
.PHONY : CMakeFiles/exe/savepng.dir/src/savepng.cpp.o.provides

CMakeFiles/exe/savepng.dir/src/savepng.cpp.o.provides.build: CMakeFiles/exe/savepng.dir/src/savepng.cpp.o

# Object files for target exe/savepng
exe/savepng_OBJECTS = \
"CMakeFiles/exe/savepng.dir/src/savepng.cpp.o"

# External object files for target exe/savepng
exe/savepng_EXTERNAL_OBJECTS =

exe/savepng: CMakeFiles/exe/savepng.dir/src/savepng.cpp.o
exe/savepng: CMakeFiles/exe/savepng.dir/build.make
exe/savepng: /usr/lib/x86_64-linux-gnu/libboost_system.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libboost_thread.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libpthread.so
exe/savepng: /usr/lib/libpcl_common.so
exe/savepng: /usr/lib/libpcl_octree.so
exe/savepng: /usr/lib/libOpenNI.so
exe/savepng: /usr/lib/libvtkCommon.so.5.8.0
exe/savepng: /usr/lib/libvtkRendering.so.5.8.0
exe/savepng: /usr/lib/libvtkHybrid.so.5.8.0
exe/savepng: /usr/lib/libvtkCharts.so.5.8.0
exe/savepng: /usr/lib/libpcl_io.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
exe/savepng: /usr/lib/libpcl_kdtree.so
exe/savepng: /usr/lib/libpcl_search.so
exe/savepng: /usr/lib/libpcl_sample_consensus.so
exe/savepng: /usr/lib/libpcl_filters.so
exe/savepng: /usr/lib/libpcl_features.so
exe/savepng: /usr/lib/libpcl_keypoints.so
exe/savepng: /usr/lib/libpcl_segmentation.so
exe/savepng: /usr/lib/libpcl_visualization.so
exe/savepng: /usr/lib/libpcl_outofcore.so
exe/savepng: /usr/lib/libpcl_registration.so
exe/savepng: /usr/lib/libpcl_recognition.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libqhull.so
exe/savepng: /usr/lib/libpcl_surface.so
exe/savepng: /usr/lib/libpcl_people.so
exe/savepng: /usr/lib/libpcl_tracking.so
exe/savepng: /usr/lib/libpcl_apps.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libboost_system.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libboost_thread.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libpthread.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libqhull.so
exe/savepng: /usr/lib/libOpenNI.so
exe/savepng: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
exe/savepng: /usr/lib/libvtkCommon.so.5.8.0
exe/savepng: /usr/lib/libvtkRendering.so.5.8.0
exe/savepng: /usr/lib/libvtkHybrid.so.5.8.0
exe/savepng: /usr/lib/libvtkCharts.so.5.8.0
exe/savepng: /usr/lib/libpcl_common.so
exe/savepng: /usr/lib/libpcl_octree.so
exe/savepng: /usr/lib/libpcl_io.so
exe/savepng: /usr/lib/libpcl_kdtree.so
exe/savepng: /usr/lib/libpcl_search.so
exe/savepng: /usr/lib/libpcl_sample_consensus.so
exe/savepng: /usr/lib/libpcl_filters.so
exe/savepng: /usr/lib/libpcl_features.so
exe/savepng: /usr/lib/libpcl_keypoints.so
exe/savepng: /usr/lib/libpcl_segmentation.so
exe/savepng: /usr/lib/libpcl_visualization.so
exe/savepng: /usr/lib/libpcl_outofcore.so
exe/savepng: /usr/lib/libpcl_registration.so
exe/savepng: /usr/lib/libpcl_recognition.so
exe/savepng: /usr/lib/libpcl_surface.so
exe/savepng: /usr/lib/libpcl_people.so
exe/savepng: /usr/lib/libpcl_tracking.so
exe/savepng: /usr/lib/libpcl_apps.so
exe/savepng: /usr/lib/libvtkViews.so.5.8.0
exe/savepng: /usr/lib/libvtkInfovis.so.5.8.0
exe/savepng: /usr/lib/libvtkWidgets.so.5.8.0
exe/savepng: /usr/lib/libvtkHybrid.so.5.8.0
exe/savepng: /usr/lib/libvtkParallel.so.5.8.0
exe/savepng: /usr/lib/libvtkVolumeRendering.so.5.8.0
exe/savepng: /usr/lib/libvtkRendering.so.5.8.0
exe/savepng: /usr/lib/libvtkGraphics.so.5.8.0
exe/savepng: /usr/lib/libvtkImaging.so.5.8.0
exe/savepng: /usr/lib/libvtkIO.so.5.8.0
exe/savepng: /usr/lib/libvtkFiltering.so.5.8.0
exe/savepng: /usr/lib/libvtkCommon.so.5.8.0
exe/savepng: /usr/lib/libvtksys.so.5.8.0
exe/savepng: CMakeFiles/exe/savepng.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable exe/savepng"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/exe/savepng.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/exe/savepng.dir/build: exe/savepng
.PHONY : CMakeFiles/exe/savepng.dir/build

CMakeFiles/exe/savepng.dir/requires: CMakeFiles/exe/savepng.dir/src/savepng.cpp.o.requires
.PHONY : CMakeFiles/exe/savepng.dir/requires

CMakeFiles/exe/savepng.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/exe/savepng.dir/cmake_clean.cmake
.PHONY : CMakeFiles/exe/savepng.dir/clean

CMakeFiles/exe/savepng.dir/depend:
	cd /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud/CMakeFiles/exe/savepng.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/exe/savepng.dir/depend

