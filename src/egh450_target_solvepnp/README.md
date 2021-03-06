# egh450_target_solvepnp
Target detection and SolvePNP demonstration in Python

## Download & Compile
Before you compile this node, ensure you have your camera running and [calibrated](http://wiki.ros.org/camera_calibration/Tutorials/MonocularCalibration).

```sh
cd ~/catkin_ws/src
git clone https://github.com/qutas/egh450_target_solvepnp
cd ~/catkin_ws
catkin_make
source ~/catkin_ws/devel/setup.bash
```

## Usage
To run a basic demonstration off of contrail navigation interface, first launch your camera interface as per usual. Next, you will need to make a copy of the demo launch file:
```
mkdir -p ~/catkin_ws/launch
cd ~/catkin_ws/launch
roscp egh450_target_solvepnp pose_estimator.launch ./
```

Next, edit the newly created launch file, using the `remap` roslaunch commands to connect the pose estimator interfaces with your camera interfaces (identify them using the `rostopic list`):
```
nano ~/catkin_ws/launch/pose_estimator.launch
```

Once ready, save and run the launch file with the command:
```sh
roslaunch ~/catkin_ws/launch/pose_estimator.launch
```

If everything is running successfully, you should see the following messages:
```sh
[INFO]: Estimating circle poses
[INFO]: Got camera info
```

Additionally, you should be able to view the processor feedback with the following topics in `rqt`:
- `/pose_estimator/debug/image_raw`: The internal mask that is generated by the processing
- `/pose_estimator/overlay/image_raw`: The processor results drawn back over the original imagery

By default, the node is configured to perform a target pose estimation of a blue circle of radius 0.2m. The radius value is irrelevant for the time being, as this will only effect the accuracy of your results. If you do not have access to a physical blue circle, you may be able to use a mobile device to display a blue circle instead.

Once a circle is detected, the created models are used work out where the target is relative to the camera using the SolvePnP method. If the circle's pose is successfully calculated, the information will be sent to TF2, where it can be visualized using a program like `rviz`. For a basic representation of the estimated pose:
1. Run `rviz`
2. Add in the TF plugin
3. Select the camera frame as the fixed frame ( [Plugin] Global Options > Fixed Frame, e.g. "webcame optical frame")
4. Hold up the target and ensure it is detected, the frame "circle" should appear in `rviz`
