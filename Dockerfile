FROM ubuntu:16.04
MAINTAINER Peter Mathia <mathiapeter@outlook.com>

RUN apt-get update && \
	apt-get install -y cmake && \
	apt-get install -y xorg-dev libglu1-mesa-dev --fix-missing && \
	wget https://vulkan.lunarg.com/sdk/download/1.0.39.1/linux/vulkansdk-linux-x86_64-1.0.39.1.run && \
	chmod ugo+x vulkansdk-linux-x86_64-1.0.39.1.run && \
	./vulkansdk-linux-x86_64-1.0.39.1.run && \
	cd VulkanSDK/1.0.39.1 && \
    export PATH=$VULKAN_SDK/bin:$PATH && \
    export LD_LIBRARY_PATH=$VULKAN_SDK/lib:$LD_LIBRARY_PATH && \
    export VK_LAYER_PATH=$VULKAN_SDK/etc/explicit_layer.d && \
    export VULKAN_SDK=$PWD/x86_64



