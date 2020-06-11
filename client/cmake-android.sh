#!/bin/bash

set -e
rm -rf build-android
mkdir build-android
(
  cd build-android
  cmake -DCMAKE_TOOLCHAIN_FILE=~/devel/00android/android-ndk-r21/build/cmake/android.toolchain.cmake -DANDROID_ABI=armeabi-v7a -DANDROID_NATIVE_API_LEVEL=android-19 -DSKIPBT=1 -DSKIPPYTHON=1 -DSKIPPTHREAD=1 ..
#  make VERBOSE=1
  make -j
)
