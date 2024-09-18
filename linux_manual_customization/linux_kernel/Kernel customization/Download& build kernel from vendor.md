 - ### git clone --depth=1 --branch rpi-6.10.y https://github.com/raspberrypi/linux ----> download  version
 - ##### sudo apt install bc bison flex libssl-dev make libc6-dev libncurses5-dev ------> to install required dependencies and toolchain
- #### to install the 64-bit toolchain to build a 64-bit kernel, run the following command----->  sudo apt install crossbuild-essential-arm64

- #### build configurations 
    cd linux
    KERNEL=kernel8
    make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- bcm2711_defconfig
- #### build  kernel  ------> make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- Image modules dtbs
