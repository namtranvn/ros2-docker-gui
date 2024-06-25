FROM osrf/ros:humble-desktop-full

RUN mkdir -p /app
RUN apt update
RUN apt install -y ros-humble-gazebo*
RUN apt install ignition-fortress -y
RUN apt install ros-humble-ros-ign -y

COPY ./demo /app/demo
WORKDIR /app/demo

CMD ["/bin/bash"]
