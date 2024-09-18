#### in each application there are two types
     - static library : linker solves this problem 
    
     - shared library : application needs  libraries during run time
    so we need libraries 
    
    sysroot:which is copy from our our rootfs which will run on target machine 
      and contains some essential directories  which are essential for kernel to 
       work
     
     ![[Screenshot from 2024-09-16 07-29-20.png]]
#### contents of sysroot
     - libraries :those we compile and move to target machine 
     - it acts as  rootfile system 
     - يعني باختصار ال sysroot بيكون copy من ال root file system اللي هي run علي  
     علي ال target machine  
     - ف انا لما باجي اعمل customize للrootfile syetem اللي هي run بحتاج من 
     ال sysroot جزئية ال libraries اللي بتساعدني اني اشغل ال application لما يكون 
       معتمد علي shared library 
       - we do something called  synchronization  between sysroot and our rootfile 
       sysrem   using command  : 
       rsync -avh  source_of_synchronization---> path of 
       sysroot    destination_of_sychronization-----> path to our rootfs 
       -علشان جزئية ال libraries اللي انا محتاجها منه 
       
![[Screenshot from 2024-09-16 08-16-10.png]]


