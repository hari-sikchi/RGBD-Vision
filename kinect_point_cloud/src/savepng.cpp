#include <pcl/io/pcd_io.h>
#include <pcl/console/time.h>
#include <pcl/console/print.h>
#include <pcl/console/parse.h>
#include <pcl/io/vtk_lib_io.h>
#include <pcl/io/png_io.h>
#include <pcl/common/centroid.h>
#include <pcl/visualization/cloud_viewer.h>
#include <pcl/io/pcd_io.h>
#include <pcl/io/png_io.h>
#include <pcl/point_types.h>
#include <pcl/filters/passthrough.h>

#include <iostream>
#include <bits/stdc++.h>

using namespace pcl;
using namespace pcl::io;
using namespace pcl::console;
using namespace std;

int main(int argc,char** argv)
{

	 pcl::PointCloud<pcl::PointXYZRGBA>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZRGBA>);

	 if (pcl::io::loadPCDFile<pcl::PointXYZRGBA>(argv[1], *cloud) != 0)
  {
    return -1;
  }

  pcl::io::savePNGFile("img.png", *cloud, "rgb");

  return 0;

} 