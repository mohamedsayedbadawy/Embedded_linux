
- ## 1.create file system
     -  in this file --->/home/mohamed/Linux_manual/linux_kernel/vendor_kernel/linux/arch/arm64/boot
    - make directories
         bin
         etc
         media
         boot
         dev
         lib 
         lib64
         proc 
         sys
- ## 2. File system 
     - ### init program
    - #### systemd 
    
     ### those called services management tools
- ## 3.commands
    - #### normal case  is  compiling source code of each command in kernel  and taking it copy best in target machin [[busy box ]]طبعا ده صعب جدا  علشان هنستخدم حاجة اسمها  

### busy box ----->for commands &init program


- ## 4. Libraries
     [[libraries]]     
- ## 5.applications
### sysroot -------> libraries & applications



## make convert rootfs  to file system and passing it to the kernel 
[[kernel file system]]

---->archive



qemu-system-aarch64 -M virt -cpu cortex-a53 -m 1G -kernel Image -append "console=ttyAMA0 rdinit=/bin/sh" -initrd initramfs.cpio.gz -nographic 




