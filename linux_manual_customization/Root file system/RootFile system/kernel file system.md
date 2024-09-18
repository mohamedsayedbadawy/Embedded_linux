### types of the file system
     - initramfs 
         location : inside the target
         data type :volatile
    - Disk saving storage -->SD card 
         - location : inside the target 
         - data type:non volatile
    - NFS 
        - location: outside the  target 
        - data type : non volatile
## methods to pass file system to the kernel
     - kernel commands
     - bootloader 
     
    we will use kernel commands
### kernel commands to pass file system to the kernel 
    we pass file system using two method 
         - mkinitramfs
         - cpio + ziping method 
    in our case we will use  cpio + gzip
### cpio & gzip method ----> inside rootfs
     cpio -----> to make archive file ( calculate all files  in single file )
     command : sudo find . -print0| cpio --null -ov --format=newc >      
     nitramfs.cpio 
     
     gzip -----> to make compressed file system
     command : gzip initramfs.cpio
     


### main.c++ contains c++ application
 
![[Screenshot from 2024-09-16 23-10-30.png]]

### applications contains  output of compilation of  main.c++
![[Screenshot from 2024-09-16 23-12-59.png]]

### running qemu 
     command : qemu-system-aarch64 -M virt -cpu cortex-a53 -m 1G -kernel Image -  
     append "console=ttyAMA0 rdinit=/bin/sh" -initrd initramfs.cpio.gz -nographic 
     
    ![[Screenshot from 2024-09-16 23-19-18.png]]
