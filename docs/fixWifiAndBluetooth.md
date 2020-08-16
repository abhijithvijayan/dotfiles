# Realtek-RTL8723DE-drivers

Note:
**REBOOT AND DISABLE SECURE BOOT FROM UEFI(BIOS)**

Follow these only if your wireless card is **RTL8822BE**, **RTL8822CE**, **RTL8821CE**, and **RTL8723DE**

Tested on ``HP 15-BS180TX``, ``HP 15Q-DS0004TX`` in ``Ubuntu 18.04 LTS``, ``Arch Linux`` with ``Kernel 5.4.58-1-lts``

- ## ## Wifi Driver

   ### 1. Install packages

      You will need to install **"make"**, **"gcc"**, **"kernel headers"**, **"kernel build essentials"**, and **"git"**.

   - #### Arch / Manjaro Linux

         sudo pacman -S git
         sudo pacman -S dkms
         sudo pacman -S linux-headers

     **REBOOT**

   - #### Ubuntu

         sudo apt-get install linux-headers-generic build-essential git libelf-dev

   ## 2. Clone and Install

       git clone https://github.com/lwfinger/rtw88.git

       cd rtw88

       make

       sudo make install

     **REBOOT**

     Refer the original [Readme](https://github.com/lwfinger/rtw88#installation-instruction)

- ## ## Bluetooth Driver

  Support for this bluetooth device had been just added to the 4.17rc+ kernel.

  The code can be easily backported to kernels 4.4 - 4.15. Somebody made a PPA with DKMS packages for bionic and xenial with the updated btrtl module.
