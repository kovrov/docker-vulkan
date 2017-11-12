FROM ubuntu:17.10
MAINTAINER Peter Mathia <mathiapeter@outlook.com>

RUN apt-get update && \
	apt-get install -y cmake && \
	apt-get install -y xorg-dev libglu1-mesa-dev --fix-missing && \
	apt-get install -y wget && \
	apt-get install -y assimp-utils && \
	apt-get install -y libassimp-dev && \
	apt-get install -y libglfw3-dev && \
	apt-get install -y libboost-all-dev && \
	wget -O VulkanSDK.run https://vulkan.lunarg.com/sdk/download/1.0.65.0/linux/vulkansdk-linux-x86_64-1.0.65.0.run?human=true && \
	chmod ugo+x VulkanSDK.run

RUN	./VulkanSDK.run
RUN	cd VulkanSDK/1.0.65.0
ENV	VULKAN_SDK="/VulkanSDK/1.0.65.0/x86_64:${VULKAN_SDK}"
ENV	PATH="${VULKAN_SDK}/bin:${PATH}"
ENV	LD_LIBRARY_PATH="${VULKAN_SDK}/lib:${LD_LIBRARY_PATH}"
ENV	VK_LAYER_PATH="${VULKAN_SDK}/etc/explicit_layer.d:${VK_LAYER_PATH}"