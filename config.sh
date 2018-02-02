#OpenCV version
OPENCV_VERSION="3.4.0"
OPENCV_CONTRIB_VERSION="3.4.0"

#Java/Python support
JAVA_SUPPORT=yes
PYTHON_SUPPORT=yes

#Deb creation
PACKAGE_NAME="opencv"
PACKAGE_VERSION=$OPENCV_VERSION
PACKAGE_RELEASE=`date +%Y-%m-%d`
PACKAGE_LICENSE="3-clause BSD License"
#PACKAGE_ARCH= #Default
PACKAGE_MANTEINER="andreacioni"
INCLUDE_DOC="no"
STRIP="yes"
INSTALL_DEB="no"
#REQUIRE= #Dependencies will be added here