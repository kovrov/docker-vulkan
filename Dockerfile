FROM amd64/ubuntu:18.10

RUN apt-get update
RUN apt-get install -y wget gnupg
RUN wget -qO - http://packages.lunarg.com/lunarg-signing-key-pub.asc | apt-key add -
RUN wget -qO /etc/apt/sources.list.d/lunarg.list http://packages.lunarg.com/vulkan/1.1.92/lunarg-vulkan-1.1.92-bionic.list
RUN apt-get update
RUN apt-get install -y cmake ninja-build g++
RUN apt-get install -y libgtest-dev
RUN apt-get install -y libglm-dev libxcb-dri3-0 libxcb-present0
RUN apt-get install -y libpciaccess0 libpng-dev libxcb-keysyms1-dev
RUN apt-get install -y libxcb-dri3-dev libx11-dev libmirclient-dev
RUN apt-get install -y libwayland-dev libxrandr-dev
RUN apt-get install -y libglfw3-dev
RUN apt-get install -y git
RUN apt-get install -y python
RUN apt-get install -y mesa-vulkan-drivers
RUN apt-get install -y lunarg-vulkan-sdk
