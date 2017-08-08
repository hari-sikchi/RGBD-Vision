MULTISENSE POINT CLOUD PROCESSING

the underlying principle is same as kinect point cloud for more details go to kinedt poit cloud folder

multisense publish the point cloud data in topic "/multisense/organized_image_points2_color" in message type sensor_msgs which is need to be  appropriately  converted to pclpointcloud format before using pcl library for processing using the same as kinect point cloud algorithm.

source code example.cpp  subscribes to topic and does the post processing and publish the cordinates to std out

for simply running the code run example with multisense running. 