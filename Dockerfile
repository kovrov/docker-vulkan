FROM ubuntu:16.04
MAINTAINER Peter Mathia <mathiapeter@outlook.com>

RUN apt-get update && \
	apt-get install -y cmake && \
	apt-get install -y xorg-dev libglu1-mesa-dev --fix-missing && \
	gcc --version


