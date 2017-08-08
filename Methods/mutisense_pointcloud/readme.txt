MULTISENSE POINT CLOUD PROCESSING

The underlying principle is same as kinect point cloud. (for more details go to kinect poit cloud folder)

multisense publishes the point cloud data in topic "/multisense/organized_image_points2_color" as message type sensor_msgs. This needs to be  appropriately  converted to pclpointcloud format before  processing it  using the same  kinect point cloud algorithm and pcl library.

source code (example.cpp)  subscribes to topic and does the post processing before publishing the cordinates of detected region of interest to std out

for simply running the code run example with multisense running or bag playing. 
