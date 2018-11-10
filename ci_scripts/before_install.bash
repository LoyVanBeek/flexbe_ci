#!/usr/bin/env bash
set -e

# install ros
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install -y dpkg # fix https://github.com/travis-ci/travis-ci/issues/10132
sudo apt-get install -y ros-$ROS_DISTRO-ros-base
sudo apt-get install -y python-rosinstall python-rosinstall-generator python-wstool build-essential python-catkin-pkg python-rosdep ros-$ROS_DISTRO-catkin python-catkin-tools
sudo rosdep init
rosdep update
