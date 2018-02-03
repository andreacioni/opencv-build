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
sudo checkinstall --default \
--type debian --install=no \
--pkgname "$PACKAGE_NAME" \
--pkgversion "$VERSION" \
--pkglicense "$PACKAGE_LICENSE" \
--deldoc --deldesc --delspec \
--requires "libtesseract3,ffmpeg,libjasper1" \
--pakdir ~ --maintainer "$MAINTAINER" --provides "$PACKAGE_NAME" \
--addso --autodoinst \
make install