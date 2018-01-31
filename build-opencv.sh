#!/bin/sh

mkdir opencv/build
cd opencv/build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
	-D BUILD_EXAMPLES=OFF \
<<<<<<< HEAD
	#-DSOFTFP=ON \
	-DCMAKE_TOOLCHAIN_FILE=../platforms/linux/arm-gnueabi.toolchain.cmake \
	#-D ENABLE_NEON=ON ..
=======
	-DSOFTFP=ON \
	-DCMAKE_TOOLCHAIN_FILE=../platforms/linux/arm-gnueabi.toolchain.cmake \
-D ENABLE_NEON=ON ..
>>>>>>> 6924ad0e26101b27abf716c8a87152e6438b6ecb

make -j8

sudo checkinstall --install=no -y