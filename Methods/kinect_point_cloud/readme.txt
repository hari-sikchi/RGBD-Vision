PROJECTING REGION OF INTEREST IN IMAGE TO A POINT CLOUD

kinect sensor and other stereo cam like multisense s7 publish pointcloud which are very helpfull in estimatig depth information from image for the purpose of calculating distance of detected object in image from the camera centre.
Point cloud library provides direct relation between image index and point cloud index.

UNDERLYING CONCEPT OF PCL 
cloud->points[k]
where k is the index of point in point cloud.
and let index for image is img.at<uchar>(i,j)
then relation between k and  i and j is k=640*i+j;(where 640 is the width of image)        //refernece :http://www.pcl-users.org/point-cloud-to-pixel-td4035641.html

let the region of interest be (120,150)[left top corner] and (240,300)[bottom right corner]
we need too publish all the index of image between the region
if(k/640>=120 && k/640<=240 && k%640>=150 && k%640<=300)
{
mycoud->point[k]=cloud->points[k];
...
...
...
...
}
 

REMOVING BACKGROUND NOISE
steps
1.we  calculate the cecntroid of published point cloud using pcl function [pcl::compute3DCentroid(*mycloud1, centroid1);].

2.to remove outliers and filter point cloud we use eucledian filtering

t3.o remove the background noise we create a new point cloud with z cordinate less than the centroid of previous point cloud

DATA
inputCloud.pcd are recorded pointcloud using kinect sensor  inside  the AGV lab.All the recorded data are stored in data folder.


EXECUTABLES AND SOURCE FILES

pointcloudcatpure.cpp is used for storing given point cloud as pcd file
{press r while viewing for adjusting zoom and press spacebar for taking pcd file}

main.cpp is source file for generating the final point cloud which tells the centroid. It creates executable file as opnniviewer. The dimensions of published centroid is in meters.

CLUSTERING.CPP ti is used for clustering point cloud using eucledian clustering algorithm 
there is no as such improvement in accuracy of distance after applying this filter


RUNNING AND INSTALLING THE PACKAGE
1.capturing the pcd file using multisense 
run  the executable point _cloud_capture source code and press space bar to store pcd file 
2. use save png source code for converting the pcd into image and extract the region of interest
3.use the main file for running the point cloud and getting centre of detected object 
4.for changing input point cloud change the index of inputcloud in line 35. 

FOLDERS
data folders contain inputcloud data and png image extracted from the point cloud
src contains source code 
exe caontains executables




 
