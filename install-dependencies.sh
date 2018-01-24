#!/bin/sh
./config.sh

#Used for OpenCV
sudo apt-get install -y build-essential cmake pkg-config
sudo apt-get install -y libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install -y libgtk2.0-dev libgstreamer0.10-0-dbg libgstreamer0.10-0 libgstreamer0.10-dev libv4l-0 libv4l-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libxvidcore-dev libx264-dev
sudo apt-get install -y libatlas-base-dev gfortran
sudo apt-get install -y python$PYTHON_2_VERSION python$PYTHON_3_VERSION
sudo apt-get install -y python-numpy python-scipy python-matplotlib
#sudo apt-get install -y default-jdk ant
sudo apt-get install -y libgtkglext1-dev
sudo apt-get install -y v4l-utils
sudo apt-get install -y python2.7 python2.7-dev python3 python3-dev
sudo apt-get install -y oracle-java8-set-default ant

#Used for cross-compiling
apt-get install git rsync cmake ia32-libs

#Intallink pip and numpy
mkdir pip/
cd pip
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo python3 get-pip.py

sudo pip install numpy
sudo pip3 install numpy

#Downloading OpenCV
cd ..
git clone https://github.com/opencv/opencv.git
cd opencv
git checkuot $OPENCV_VERSION