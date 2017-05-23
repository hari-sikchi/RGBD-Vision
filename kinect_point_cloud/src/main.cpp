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

#define RED_MULTIPLIER 0.299
#define GREEN_MULTIPLIER 0.587
#define BLUE_MULTIPLIER 0.114
#define MAX_COLOR_INTENSITY 255

using namespace pcl;
using namespace pcl::io;
using namespace pcl::console;
using namespace std;

int main(int argc,char** argv)
{


  pcl::PointCloud<pcl::PointXYZRGBA>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZRGBA>);
  pcl::PointCloud<pcl::PointXYZRGBA>::Ptr mycloud(new pcl::PointCloud<pcl::PointXYZRGBA>);
  pcl::PointCloud<pcl::PointXYZRGBA>::Ptr mycloud1(new pcl::PointCloud<pcl::PointXYZRGBA>);
 
  if (pcl::io::loadPCDFile<pcl::PointXYZRGBA>(argv[1], *cloud) != 0)
  {
    return -1;
  }
  mycloud->width    = 640;
  mycloud->height   = 480;
  mycloud->is_dense = false;
  //mycloud->points.resize (cloud->width * cloud->height);

  mycloud1->width    = 640;
  mycloud1->height   = 480;
  mycloud1->is_dense = false;
  //mycloud1->points.resize (cloud->width * cloud->height);

  size_t i;
  size_t j=0;

 for ( i = 0; i < cloud->points.size (); ++i)
  {
    if(i/640>=253 && i/640<=425 && i%640>=252 && i%640<=388)
    {
      mycloud->points.resize (j+1);
      mycloud->points[j].x = cloud->points[i].x;
      mycloud->points[j].y = cloud->points[i].y;
      mycloud->points[j].z = cloud->points[i].z;
      mycloud->points[j].r = cloud->points[i].r;
      mycloud->points[j].g = cloud->points[i].g;
      mycloud->points[j++].b = cloud->points[i].b;
    }

  }  

  Eigen::Vector4f centroid;
  
  pcl::compute3DCentroid(*mycloud, centroid);

  std::cout << "The XYZ coordinates of the centroid are: ("
        << centroid[0] << ", "
        << centroid[1] << ", "
        << centroid[2] << ")." << std::endl;


   j=0;
 for ( i = 0; i < mycloud->points.size (); ++i)
  {
    if(((mycloud->points[i]).z)<centroid[2])
    {
      mycloud1->points.resize (j+1);
      mycloud1->points[j].x = mycloud->points[i].x;
      mycloud1->points[j].y = mycloud->points[i].y;
      mycloud1->points[j].z = mycloud->points[i].z;
      mycloud1->points[j].r = mycloud->points[i].r;
      mycloud1->points[j].g = mycloud->points[i].g;
      mycloud1->points[j++].b = mycloud->points[i].b;



    }


  }  



  //pcl::io::savePCDFileASCII("roi.pcd", *mycloud);

 Eigen::Vector4f centroid1;

 pcl::compute3DCentroid(*mycloud1, centroid1);

  std::cout << "The XYZ coordinates of the centroid1 are: ("
        << centroid1[0] << ", "
        << centroid1[1] << ", "
        << centroid1[2] << ")." << std::endl;


  pcl::visualization::CloudViewer viewer("mycloud1");
  viewer.showCloud(mycloud1);
  while (!viewer.wasStopped())
  {
    // Do nothing but wait.
  } 


  return 0;
  



}