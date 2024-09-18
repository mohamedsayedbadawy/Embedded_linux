## Work in stage of ( power on && application on )
- ## main functions
    - ### initialization for hardware 
    - ### control kernel



## Booting sequence 

![[Pasted image 20240912171818.png]]



![[Pasted image 20240912180335.png]]
  - #### First Boot loader ( BIOS)---> Basic input output system
      - #### initialize hardware components 
      - #### power on self test 
         ##### to check if the hardware components work correctly or not ,if not  the board  will not work
      - #### after that it loads secondary boot loader from (Rom) -->(SRAM)  
   

 - ### secondary boot loader 
     - #### 1. initialize  DRAM && DRAM controller 
     - #### 2. Loads our boot loader  from certain path and put it in --> DRAM 
     - #### 3.Pass control to our Boot loader  
     
 - ### Third boot loader (U boot ) ----->
    - #### 1. U boot loads kernel in the DRAM and the kernel starts to configure  يعني بيخليه يبدء يشتغل
    - #### U boot will init resources that will be needed  during booting kernel in the RAM
    - ### Steps for U-boot 
        - #### init peripherals  those  kernel will need them
        - ##### Copy rootfilesystem from rom to ram
        - ##### loads kernel in from ROM ------> RAM
        - #### Passes kernel parameters (Device tree) 
        - #### gives control kernel 
    