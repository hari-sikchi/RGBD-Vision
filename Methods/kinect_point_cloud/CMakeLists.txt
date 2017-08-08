cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
 
project(PCL_openni_viewer)
 
find_package(PCL 1.7 REQUIRED)
 
include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})
 
#set(PCL_BUILD_TYPE Release)
 
file(GLOB PCL_openni_viewer_SRC
    "src/main.h"
    "src/main.cpp"
)


add_executable(exe/main ${PCL_openni_viewer_SRC})
target_link_libraries (exe/main ${PCL_LIBRARIES})

add_executable(exe/clustering src/clustering.cpp)
target_link_libraries (exe/clustering ${PCL_LIBRARIES})

add_executable(exe/point_cloud_capture src/point_cloud_capture.cpp)
target_link_libraries (exe/point_cloud_capture ${PCL_LIBRARIES})

add_executable(exe/savepng src/savepng.cpp)
target_link_libraries (exe/savepng ${PCL_LIBRARIES})