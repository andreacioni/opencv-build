#!/bin/sh
./config.sh

mkdir opencv/build
cd opencv/build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
	-D BUILD_EXAMPLES=OFF ..

make -j7

#Create .deb package
sudo checkinstall -D -y --nodoc --install=$INSTALL_DEB --pkgname=$PACKAGE_NAME --pkgversion=$PACKAGE_VERSION --pkgrelease=$PACKAGE_RELEASE --pkglicense=$PACKAGE_LICENSE