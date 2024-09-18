## main function ---> to compile commands and init program in kernel automatic 

### busy box : is only one binary contains  essential commands and init program
- ### download busybox 
     git clone https://github.com/mirror/busybox
     in this direction 
     /home/mohamed/Linux_manual/linux_kernel/vendor_kernel/linux/arch/arm64/boot
- ## configure busybox
     make ARCH=arm64 CROSS_COMPILE=aarch64-rpi4-linux-gnu- menuconfig

- ## Build busybox
      make ARCH=arm64 CROSS_COMPILE=aarch64-rpi4-linux-gnu- 
      
      make sure that you included path of cross compiler in PATH 
      variable
      /home/mohamed/x-tools/aarch64-rpi4-linux-gnu/bin
       --->but set network tc off in menuconfig
- ## how to move binaries from Busybox to rootfs 
    - ##### in busybox directory 
         - open vim .config
         - then set  CONFIG_PREFIX=" path to the root file system"
         - وطبعا انت عامل جوا الrootfs هيكون فيه directories ف ال  busy box لو عنده اي حاجة متخزنة مثلا في /usr وانت عامل directory اسمه برضو  /usr هيروح ينقله الحاجة ديه عنده برضو  
- ## move binary  
	     make ARCH=arm64 CROSS_COMPILE=aarch64-rpi4-linux-gnu- install