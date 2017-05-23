# LSD_SLAM

LSD_SLAM is a Direct Visual Slam approach using monocular camera. The ROS package made by Computer Vision Group
 of TUM [http://vision.in.tum.de/research/vslam/lsdslam?redirect=1](http://vision.in.tum.de/research/vslam/lsdslam?redirect=1) 
 outputs a semi-dense map of the environment and the pose of the robot in real time. However it only publishes the pose of 
 the bot whereas the complete map as a 3d Point Cloud is not published in any ROS topic during run time.

The github link to the package : [https://github.com/tum-vision/lsd_slam](https://github.com/tum-vision/lsd_slam)

# 1. Setup:

This package requires a ROS rosbuild workspace rather than a catkin one. Follow the instructions given on
 [https://github.com/tum-vision/lsd_slam](https://github.com/tum-vision/lsd_slam) (For Ubuntu 14.04 and ROS-Indigo) to make the 
 rosbuild workspace and to get the required package.

To use this package we need to set up a camera and corresponding ros node for it as well. Either a normal camera 
or a Kinect 1414 can be used. To set up the Kinect we need a catkin workspace. Follow the instructions given on
 [http://wiki.ros.org/catkin/Tutorials/create_a_workspace](http://wiki.ros.org/catkin/Tutorials/create_a_workspace) to create 
 the catkin workspace. Then follow the instructions given on 
[Setting up Kinect](http://blog.justsophie.com/installing-kinect-nite-drivers-on-ubuntu-14-04-and-ros-indigo/) 
 to install the drivers required for Kinect and to get the required package to use Kinect. **Note** Follow the extra 
 steps given in step 3 of the beforesaid page.

Once all this is done adjust your ROS_PACKAGE_PATH variable properly to include both the workspaces and source the setup.bash files of both as well.


# 2. Usage:

After connecting the Kinect,

Launch the Openni_launch:

		roslaunch openni_launch openni.launch

Launch the lsd_slam viewer:

		rosrun lsd_slam_viewer viewer

Launch the lsd_slam main ros node:

		rosrun lsd_slam_core live_slam image:=/camera/rgb/image_raw camera_info:=/camera/rgb/camera_info

This will output the map on the point cloud viewer. To get the pose of the robot subscribe to topic /lsd_slam/pose.

See this page for more functionalities and usage : [https://github.com/tum-vision/lsd_slam](https://github.com/tum-vision/lsd_slam)

# 3. Problems:

* **TRACKING LOST** 

One drawback of this package is that it stops working once it goes out of track. To avoid this :

(1) There should be sufficient light.
(2) Camera caliberation should be proper.
(3)	High number of features(corners) should be detectable --> This requires more light and less speed.
(4) There should be more translational motion and less rotational motion.	

* **Complete Map Not Published During Runtime**

The complete map of the surroundings is necessary for SLAM but this package does not publish the 3d point cloud of the map in any topic. To get this we can modify this package [https://github.com/rbrth/framework](https://github.com/rbrth/framework) to use the slam_bridge as per our needs.
