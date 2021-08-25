cmake_minimum_required(VERSION 3.10)
project(rknnyolo)

set(SYSTEM_PLATFORM "Android-arm64-v8a")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D__ANDROID__ -DANDROID")

link_directories("${CMAKE_SOURCE_DIR}/libs/opencv")


find_library( # Sets the name of the path variable.
          log-lib

          # Specifies the name of the NDK library that
          # you want CMake to locate.
          log )


include_directories(
    ${CMAKE_SOURCE_DIR}/3rdparty/include/opencv
    ${CMAKE_SOURCE_DIR}/3rdparty/include/rknn_api
)
add_library(rknn_api SHARED IMPORTED)
set_target_properties(rknn_api PROPERTIES IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/libs/rknn_api/librknn_api.so)

add_executable(test test.cc)
target_link_libraries(
    test
    rknn_api
    ${log-lib}
    opencv_highgui
    opencv_imgcodecs
    opencv_imgproc
    opencv_videoio
    opencv_core
    cpufeatures
    IlmImf
    ittnotify
    libjasper
    libjpeg-turbo
    libpng
    libprotobuf
    libtiff
    libwebp
    zlib
    tegra_hal
)


