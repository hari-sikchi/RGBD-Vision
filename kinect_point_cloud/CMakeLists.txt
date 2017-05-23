cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
 
project(PCL_openni_viewer)
 
find_package(PCL 1.7 REQUIRED)
 
include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})
 
set(PCL_BUILD_TYPE Release)
 
file(GLOB PCL_openni_viewer_SRC
    "src/*.h"
    "src/*.cpp"
)
add_executable(openniViewer ${PCL_openni_viewer_SRC})
 
target_link_libraries (openniViewer ${PCL_LIBRARIES})



cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
find_package(PCL 1.7 REQUIRED)
add_executable(clustering clustering.cpp)
target_link_libraries (clustering ${PCL_LIBRARIES})

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
find_package(PCL 1.7 REQUIRED)
add_executable(point_cloud_capture point_cloud_capture.cpp)
target_link_libraries (point_cloud_capture ${PCL_LIBRARIES})



cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
find_package(PCL 1.7 REQUIRED)
add_executable(savepng savepng.cpp)
target_link_libraries (savepng ${PCL_LIBRARIES})