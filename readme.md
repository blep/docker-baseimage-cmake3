# phusion/baseimage with python 3.5 pip/pytest

This image is based on phusion/baseimage. It already has python 3.5.1, but it is missing pip...

It provides:
- Python pip
- Python pytest
- CMake 3.5.1
- ninja-build 1.5.1
- make

Used `apt-get --no-install-recommends` to avoid getting the "recommended" gcc package dependency (reduce image size by ~140MB).
