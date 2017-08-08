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
include CMakeFiles/exe/point_cloud_capture.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/exe/point_cloud_capture.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/exe/point_cloud_capture.dir/flags.make

CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.o: CMakeFiles/exe/point_cloud_capture.dir/flags.make
CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.o: src/point_cloud_capture.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.o -c /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud/src/point_cloud_capture.cpp

CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud/src/point_cloud_capture.cpp > CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.i

CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud/src/point_cloud_capture.cpp -o CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.s

CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.o.requires:
.PHONY : CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.o.requires

CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.o.provides: CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.o.requires
	$(MAKE) -f CMakeFiles/exe/point_cloud_capture.dir/build.make CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.o.provides.build
.PHONY : CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.o.provides

CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.o.provides.build: CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.o

# Object files for target exe/point_cloud_capture
exe/point_cloud_capture_OBJECTS = \
"CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.o"

# External object files for target exe/point_cloud_capture
exe/point_cloud_capture_EXTERNAL_OBJECTS =

exe/point_cloud_capture: CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.o
exe/point_cloud_capture: CMakeFiles/exe/point_cloud_capture.dir/build.make
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libboost_system.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libboost_thread.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libpthread.so
exe/point_cloud_capture: /usr/lib/libpcl_common.so
exe/point_cloud_capture: /usr/lib/libpcl_octree.so
exe/point_cloud_capture: /usr/lib/libOpenNI.so
exe/point_cloud_capture: /usr/lib/libvtkCommon.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkRendering.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkHybrid.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkCharts.so.5.8.0
exe/point_cloud_capture: /usr/lib/libpcl_io.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
exe/point_cloud_capture: /usr/lib/libpcl_kdtree.so
exe/point_cloud_capture: /usr/lib/libpcl_search.so
exe/point_cloud_capture: /usr/lib/libpcl_sample_consensus.so
exe/point_cloud_capture: /usr/lib/libpcl_filters.so
exe/point_cloud_capture: /usr/lib/libpcl_features.so
exe/point_cloud_capture: /usr/lib/libpcl_keypoints.so
exe/point_cloud_capture: /usr/lib/libpcl_segmentation.so
exe/point_cloud_capture: /usr/lib/libpcl_visualization.so
exe/point_cloud_capture: /usr/lib/libpcl_outofcore.so
exe/point_cloud_capture: /usr/lib/libpcl_registration.so
exe/point_cloud_capture: /usr/lib/libpcl_recognition.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libqhull.so
exe/point_cloud_capture: /usr/lib/libpcl_surface.so
exe/point_cloud_capture: /usr/lib/libpcl_people.so
exe/point_cloud_capture: /usr/lib/libpcl_tracking.so
exe/point_cloud_capture: /usr/lib/libpcl_apps.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libboost_system.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libboost_thread.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libpthread.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libqhull.so
exe/point_cloud_capture: /usr/lib/libOpenNI.so
exe/point_cloud_capture: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
exe/point_cloud_capture: /usr/lib/libvtkCommon.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkRendering.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkHybrid.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkCharts.so.5.8.0
exe/point_cloud_capture: /usr/lib/libpcl_common.so
exe/point_cloud_capture: /usr/lib/libpcl_octree.so
exe/point_cloud_capture: /usr/lib/libpcl_io.so
exe/point_cloud_capture: /usr/lib/libpcl_kdtree.so
exe/point_cloud_capture: /usr/lib/libpcl_search.so
exe/point_cloud_capture: /usr/lib/libpcl_sample_consensus.so
exe/point_cloud_capture: /usr/lib/libpcl_filters.so
exe/point_cloud_capture: /usr/lib/libpcl_features.so
exe/point_cloud_capture: /usr/lib/libpcl_keypoints.so
exe/point_cloud_capture: /usr/lib/libpcl_segmentation.so
exe/point_cloud_capture: /usr/lib/libpcl_visualization.so
exe/point_cloud_capture: /usr/lib/libpcl_outofcore.so
exe/point_cloud_capture: /usr/lib/libpcl_registration.so
exe/point_cloud_capture: /usr/lib/libpcl_recognition.so
exe/point_cloud_capture: /usr/lib/libpcl_surface.so
exe/point_cloud_capture: /usr/lib/libpcl_people.so
exe/point_cloud_capture: /usr/lib/libpcl_tracking.so
exe/point_cloud_capture: /usr/lib/libpcl_apps.so
exe/point_cloud_capture: /usr/lib/libvtkViews.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkInfovis.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkWidgets.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkHybrid.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkParallel.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkVolumeRendering.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkRendering.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkGraphics.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkImaging.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkIO.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkFiltering.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtkCommon.so.5.8.0
exe/point_cloud_capture: /usr/lib/libvtksys.so.5.8.0
exe/point_cloud_capture: CMakeFiles/exe/point_cloud_capture.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable exe/point_cloud_capture"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/exe/point_cloud_capture.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/exe/point_cloud_capture.dir/build: exe/point_cloud_capture
.PHONY : CMakeFiles/exe/point_cloud_capture.dir/build

CMakeFiles/exe/point_cloud_capture.dir/requires: CMakeFiles/exe/point_cloud_capture.dir/src/point_cloud_capture.cpp.o.requires
.PHONY : CMakeFiles/exe/point_cloud_capture.dir/requires

CMakeFiles/exe/point_cloud_capture.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/exe/point_cloud_capture.dir/cmake_clean.cmake
.PHONY : CMakeFiles/exe/point_cloud_capture.dir/clean

CMakeFiles/exe/point_cloud_capture.dir/depend:
	cd /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud /home/indu/pointcloud/RGBD-Vision/kinect_point_cloud/CMakeFiles/exe/point_cloud_capture.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/exe/point_cloud_capture.dir/depend

