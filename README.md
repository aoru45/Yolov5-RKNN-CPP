# Yolov5 RKNN Cpp

This is a code base for yolov5 cpp inference.

This code is built for android arm v8 test.

NDK Version: r16b

## Install

1. Download and set NDK path in your environment.

2. Build opencv android armv8 and put the .a files in libs/opencv.

3. Convert yolov5 onnx file to rknn file with 3 output layers.
4. Run build.sh.




## Usage

```cmd
./build.sh
```
This code will build a execuable file in the build dir.

## Contributing

PRs accepted.

## License

MIT © Aoruxue
