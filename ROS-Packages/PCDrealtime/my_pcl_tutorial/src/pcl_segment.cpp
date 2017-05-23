#include <ros/ros.h>
// PCL specific includes
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>

#include <pcl/io/pcd_io.h>
#include <pcl/console/time.h>
#include <pcl/console/print.h>
#include <pcl/console/parse.h>
#include <pcl/io/vtk_lib_io.h>
#include <pcl/io/png_io.h>
#include <pcl/common/centroid.h>
#include <pcl/visualization/cloud_viewer.h>

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


ros::Publisher pub;
pcl::visualization::CloudViewer viewer ("Cloud Viewer");
void 
cloud_cb (const sensor_msgs::PointCloud2ConstPtr& input)
{

  // Create a container for the data.
  sensor_msgs::PointCloud2 output;

  
  /*pcl::PointCloud<pcl::PointXYZ> cloud;
    pcl::fromROSMsg(*input, cloud);
   


    pcl::visualization::CloudViewer viewer1("originalcloud");
  	viewer1.showCloud(input);



  
output = *input;

  // Publish the data.
  pub.publish (output);
*/
/*
	 pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZRGB>());  
  pcl::PCLPointCloud2 pcl_pc;
  pcl_conversions::toPCL(*pc, pcl_pc);
  pcl::fromPCLPointCloud2 (pcl_pc, *cloud);
  pcl::PointCloud<pcl::PointXYZRGB>::Ptr mycloud(new pcl::PointCloud<pcl::PointXYZRGB>);*/

  //pcl::PCLPointCloud2* cloud = new pcl::PCLPointCloud2; 
 // pcl::PCLPointCloud2ConstPtr cloudPtr(cloud);

  //================================================
   sensor_msgs::PointCloud2 pc2;
  pc2.header=input->header;
  pcl::PCLPointCloud2 pcl_pc2;
    pcl_conversions::toPCL(*input,pcl_pc2);
    pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZRGB>);
    pcl::fromPCLPointCloud2(pcl_pc2,*cloud);

   //pcl::PointCloud<pcl::PointXYZ> cloud;
  //pcl::fromROSMsg (*pc, cloud);
  //pcl::PCLPointCloud2* mycloud;
 	pcl::PointCloud<pcl::PointXYZRGB>::Ptr mycloud (new pcl::PointCloud<pcl::PointXYZRGB>);
 // pcl_conversions::toPCL(*pc, *cloud);
 
  mycloud->width    = cloud->width;
  mycloud->height   = cloud->height;
  mycloud->is_dense = false;
  mycloud->points.resize (cloud->width * cloud->height);

  size_t i;
  size_t j=0;
    for ( i = 0; i < cloud->points.size (); ++i)
  {
  
      mycloud->points[j].x = cloud->points[i].x;
      mycloud->points[j].y = cloud->points[i].y;
      mycloud->points[j].z = cloud->points[i].z;
      mycloud->points[j].r = cloud->points[i].r;
      mycloud->points[j].g = cloud->points[i].g;
      mycloud->points[j++].b = cloud->points[i].b;
  

  }  
	


  /*sensor_msgs::PointCloud2 pc2;  
  pcl::PCLPointCloud2::Ptr pcl_pc_2(new pcl::PCLPointCloud2());
  pcl::toPCLPointCloud2 (*mycloud, *pcl_pc_2);
  pcl_conversions::fromPCL( *pcl_pc_2, pc2 );*/
 
  //pc2.swap(*input);
  
  viewer.showCloud (mycloud);

  pcl::toROSMsg(*mycloud, pc2);
  pub.publish(pc2);//this is for publishing sensor_msg::PointCloud2

}

int main (int argc, char** argv)
{
  // Initialize ROS
  ros::init (argc, argv, "Pcl_realtime viewer");
  ros::NodeHandle nh;

  ros::Subscriber sub = nh.subscribe ("/camera/depth_registered/points", 1, cloud_cb);


  // Create a ROS publisher for the output point cloud
  pub = nh.advertise<sensor_msgs::PointCloud2> ("pc2", 1);

  // Spin
  ros::spin ();
}
