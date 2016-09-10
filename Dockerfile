# docker build -tcmake3 cmake3
# 
# Use phusion/baseimage as base image. 
# See https://github.com/phusion/baseimage-docker for more details

FROM blep/docker-baseimage-py35:0.1.0

RUN apt-get update
# cmake + ninja-build: 239.4MB -> 338.5 MB
RUN apt-get install -y --no-install-recommends cmake ninja-build make flex bison make-doc 

# autotools have gcc as dependency, so we don't install them for now to keep the image size "small": 338.5MB -> 477.8 MB
# RUN apt-get install -y --no-install-recommends autoconf automake libtool 

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

