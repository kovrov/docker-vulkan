FROM ubuntu:16.04
MAINTAINER Peter Mathia <mathiapeter@outlook.com>

RUN add-apt-repository ppa:ubuntu-toolchain-r/test && \
	apt-get update && \
	apt-get install -y cmake && \
	apt-get install -y xorg-dev libglu1-mesa-dev --fix-missing && \
	apt-get install gcc-6 g++-6 && \
	gcc-6 --version


