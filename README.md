# vulkan-sdk

Docker development environment with Ubuntu 18.10, gcc, cmake, ninja, gtest
and LunarG VulkanSDK.

    docker build --rm -f Dockerfile -t vulkan-sdk:latest .
    docker run --privileged --rm -it vulkan-sdk:latest
