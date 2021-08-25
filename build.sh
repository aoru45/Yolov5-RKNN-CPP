#!/bin/bash
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK/build/cmake/android.toolchain.cmake \
    -DANDROID_ABI="arm64-v8a" \
    -DANDROID_NDK=$ANDROID_NDK \
    -DANDROID_PLATFORM=android-24 \
    -DANDROID_STL=c++_shared \
    -DANDROID_TOOLCHAIN=clang \
    -DCMAKE_BUILD_TYPE=Release

make -j4
