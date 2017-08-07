#include <stdio.h>
#include <stdlib.h>
#include <ros/ros.h>
// PCL specific includes
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/visualization/cloud_viewer.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/io/io.h>
#include <pcl/io/pcd_io.h>
#include <stdlib.h>
#include <pcl/io/png_io.h>
#include <pcl/common/centroid.h>

//opencv specific includes
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>
#include <bits/stdc++.h>
#include <cmath>

using namespace cv;
using namespace std;
using namespace pcl;

pcl::visualization::CloudViewer viewer ("Simple Cloud Viewer");

void 
cloud_cb (const sensor_msgs::PointCloud2ConstPtr& input)
{

  
  pcl::PCLPointCloud2 pcl_pc2;
  pcl_conversions::toPCL(*input,pcl_pc2);
  pcl::PointCloud<pcl::PointXYZRGBA>::Ptr temp_cloud(new pcl::PointCloud<pcl::PointXYZRGBA>);
  pcl::fromPCLPointCloud2(pcl_pc2,*temp_cloud);

  pcl::PointCloud<pcl::PointXYZRGBA>::Ptr mycloud(new pcl::PointCloud<pcl::PointXYZRGBA>);
  pcl::PointCloud<pcl::PointXYZRGBA>::Ptr mycloud1(new pcl::PointCloud<pcl::PointXYZRGBA>);

  mycloud->width    = 1024;
  mycloud->height   = 544;
  mycloud->is_dense = false;

  
  size_t i;
  size_t j=0;

 for ( i = 0; i < temp_cloud->points.size (); ++i)
  {
    if(i/1024>=300 && i/1024<=350 && i%1024>=700 && i%1024<=800)
    {
      mycloud->points.resize (j+1);
      mycloud->points[j].x = temp_cloud->points[i].x;
      mycloud->points[j].y = temp_cloud->points[i].y;
      mycloud->points[j].z = temp_cloud->points[i].z;
      mycloud->points[j].r = temp_cloud->points[i].r;
      mycloud->points[j].g = temp_cloud->points[i].g;
      mycloud->points[j++].b = temp_cloud->points[i].b;
    }

  }

  Eigen::Vector4f centroid;
  
  pcl::compute3DCentroid(*mycloud, centroid);

  std::cout << "The XYZ coordinates of the centroid are: ("
        << centroid[0] << ", "
        << centroid[1] << ", "
        << centroid[2] << ")." << std::endl;
  
  viewer.showCloud(mycloud);
  if(viewer.wasStopped())
    exit (0);  
}


int
main (int argc, char** argv)
{
  // Initialize ROS
  ros::init (argc, argv, "my_pcl_tutorial");
  ros::NodeHandle nh;
  // Create a ROS subscriber for the input point cloud
  ros::Subscriber sub = nh.subscribe ("/multisense/organized_image_points2_color", 1, cloud_cb);
  // Spin
  ros::spin ();
}


