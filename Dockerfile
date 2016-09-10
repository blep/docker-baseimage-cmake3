# docker build -tcmake3 cmake3
# 
# Use phusion/baseimage as base image. 
# See https://github.com/phusion/baseimage-docker for more details

FROM blep/docker-baseimage-py35:0.1.0

RUN apt-get update
# cmake: 239.4MB -> 432.2MB
# + ninja-build -> 432.6MB
RUN apt-get install -y cmake ninja-build

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

