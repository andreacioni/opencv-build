#!/bin/sh
./config.sh

#Used for OpenCV
sudo apt-get install -y build-essential cmake pkg-config checkinstall
sudo apt-get install -y libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install -y libgtk2.0-dev libgstreamer0.10-0-dbg libgstreamer0.10-0 libgstreamer0.10-dev libv4l-0 libv4l-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libxvidcore-dev libx264-dev
sudo apt-get install -y libatlas-base-dev gfortran
sudo apt-get install -y python2.7 python3 python2.7-dev python3-dev
sudo apt-get install -y python-numpy python-scipy python-matplotlib
sudo apt-get install -y python3-numpy python3-scipy python3-matplotlib
sudo apt-get install -y default-jdk ant
sudo apt-get install -y libgtkglext1-dev
sudo apt-get install -y v4l-utils

#Setting up tools for cross compilation (armv6, RPi 1/Zero)
#cd ..
#git clone https://github.com/raspberrypi/tools.git --depth 1
#sudo ln -s ./tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc /usr/bin/rpi-gcc
#sudo ln -s ./tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin/arm-linux-gnueabihf-g++ /usr/bin/rpi-g++
#sudo ln -s ./tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin/arm-linux-gnueabihf-ar /usr/bin/rpi-ar
#sudo ln -s ./tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin/arm-linux-gnueabihf-ranlib /usr/bin/rpi-ranlib

#Used for cross-compiling (armv7, RPi 2/3)
#sudo apt-get install gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf

#Intallink pip and numpy
mkdir pip/
cd pip
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo python3 get-pip.py

sudo pip install numpy
sudo pip3 install numpy

#Downloading OpenCV and OpenCV contrib
cd ..
git clone https://github.com/opencv/opencv.git
cd opencv
git checkout $OPENCV_VERSION

cd ..
git clone https://github.com/opencv/opencv_contrib.git
cd opencv_contrib
git checkout $OPENCV_CONTRIB_VERSION

