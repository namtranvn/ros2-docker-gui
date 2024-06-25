# Git
```
git init
git add .
git commit -m "first commit"
git remote add origin https://github.com/namtranvn/ros2-docker-gui.git
git push -u origin main
```

# ROS2 Gazebo
```
xhost local:root
source /opt/ros/humble/setup.bash
ign gazebo tugbot_depot.sdf
ign topic -t "/model/tugbot/cmd_vel" -m ignition.msgs.Twist -p "linear: {x: 1.0}"
ros2 run ros_ign_bridge parameter_bridge /model/tugbot/cmd_vel@geometry_msgs/msg/Twist@ignition.msgs.Twist
ros2 run ros_ign_bridge parameter_bridge /world/world_demo/model/tugbot/link/camera_front/sensor/color/image@sensor_msgs/msg/Image@ignition.msgs.Image
ros2 run rqt_image_view rqt_image_view
ros2 topic pub --once /model/tugbot/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 1.0}}"
```