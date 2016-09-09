# phusion/baseimage with python 3.5 pip/pytest

This image is based on phusion/baseimage. It already has python 3.5.1, but it is missing pip...

It provides:
- Python pip
- Python pytest
- CMake 3.5.1
- ninja-build 1.5.1

There is probably room to make this image smaller. `apt-get cmake` increased the image size by nearly 200MB. CMake install on Windows is only 50MB, so there is probably some extra dependencies...
