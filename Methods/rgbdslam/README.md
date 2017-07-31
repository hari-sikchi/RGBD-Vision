# RBG-D SLAM

RGB-D SLAM is a slam method for RGB-D cameras like Kinect 1414. This package 
[https://github.com/yangyin2016/rgbdslam_v2-indigo](https://github.com/yangyin2016/rgbdslam_v2-indigo) outputs the 3d map 
of the surrounding on its GUI and publishes the pose of the robot on a ROS topic. It does not the map on a ROS topic although it 
is mentioned on its github page that it does.

# 1. Setup:

This package only a ROS catkin workspace. Follow the instructions under the installation section on the github page 
[https://github.com/yangyin2016/rgbdslam_v2-indigo](https://github.com/yangyin2016/rgbdslam_v2-indigo). (In this repository, this 
package is not added because of its large size)
**Note** In the first step download and the extract the archive to the src folder of the catkin workspace rather than cloning the repository.

This package requires the use of a RGB-D camera i.e Kinect 1414. To set it up follow the instructions on 
[Setting up Kinect](http://blog.justsophie.com/installing-kinect-nite-drivers-on-ubuntu-14-04-and-ros-indigo/) 
**Note** Follow the extra steps given in step 3 of the beforesaid page.

# 2. Usage:

Before launching we need to make sure the ROS topics mentioned in the launch file catkin_ws/src/rgbdslam_v2-indigo/launch/openni+rgbdslam.launch are as follows:

    <param name="config/topic_image_mono"              value="/camera/rgb/image_color"/> 
    <param name="config/topic_image_depth"             value="/camera/depth/image"/>


After connecting the Kinect, launch rgbdslam:

		roslaunch rgbdslam openni+rgbdslam.launch

This will output the map on the GUI of rgbdslam. The pose of the robot and the map of the environment as a pointcloud is published. Although some data is being published on the topic /rgbdslam/online_clouds, it is not possible to see the cloud on rviz.

