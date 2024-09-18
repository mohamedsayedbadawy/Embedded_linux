## operations
- ### Download Source Code
- ### Configure ---> ( SOC,customize init process)                                     U-boot configuration for  bcm283x---> name of SOC  in raspi3/4 and the vendor can give me a configuration for raspi  board also  ----> configuration for SOC and Board
- ### Build Toolchain ---->target 
- ### Download Board ---> Booting 
- ### احنا كل مهمتنا في ال U-boot هو اننا هيكون جاي لينا configurations  في ال requirements ودورنا اننا نطبق ال configurations ديه باستخدام ال u -boot  وده اللي هن  build بيه
- ## steps to customize U-boot 
    - #### download source code git clone git://git.denx.de/u-boot.git
    - #### cd configs 
    - #### search for rpi_4_defconfig
    - ##### cd  .. / ---> to be in u-boot directory then make rpi_4_defconfig
- #### vim .config in u-boot directory  ---> to show all configurations ---> after make rpi_4_defconfig 

    - ##### كدة احنا اختارنا الconfiguration بتاعت البوردة واللي هي raspi4 وعملنا make  لل configurations وطلعنا ال .config 
    - ##### فاضل كدة اننا نعمل Make  علشان ن build  بال cross compiler ---> 
    - ##### make CROSS_COMPILE=aarch64-rpi4-linux-gnu-     but before that we must but path of toolchain 
	    - ##### PATH=/home/mohamed/x-tools/aarch64-rpi4-linux-  gnu/bin:$PATH  to search on it when passing option CROSS_COMPILE= aarch64-rpi4-linux-gnu-  ---> to use cross compiler instead of host compiler

    
 
- ### what we do ? we make u-boot to run on rpi4 board so we make configurations to run on board so we make executable to run on board   to run as u-boot on board
- #### after make command there will be binary file called  --->u-boot.bin which will run on board as u-boot customized for rpi4
- 
