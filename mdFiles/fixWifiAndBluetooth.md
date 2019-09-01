# Realtek-RTL8723DE-drivers

Bluetooth and Wi-fi Drivers for Realtek rtl8723de card

Tested on HP 15-BS180TX

- ## Wifi Driver

You will need to install "make", "gcc", "kernel headers", "kernel build essentials", and "git".

```
sudo apt-get install linux-headers-generic build-essential git libelf-dev
```

Clone the driver collection repo

```
git clone -b extended https://github.com/lwfinger/rtlwifi_new.git
```

```
cd rtlwifi_new
```

```
make
```

```
sudo make install
```

**REBOOT AND DISABLE SECURE BOOT FROM UEFI(BIOS)**

Since Ubuntu kernel 4.4.0-20 the EFI_SECURE_BOOT_SIG_ENFORCE kernel config has been enabled. That prevents from loading unsigned third party modules if UEFI Secure Boot is enabled.

The easiest way to fix this issue is to disable Secure Boot in UEFI (BIOS) settings.

In most cases you can get into UEFI settings using grub menu. Press ESC button on booting, get into grub menu and select System Setup. Secure Boot option should be in "Security" or "Boot" section of the UEFI.

You can get into UEFI directly, but it depends on your hardware. Read your computer manual to see how to get there. It may be Del, or F2 on boot, or something else.

**REBOOT**

After Reboot

```
cd rtlwifi_new
```

```
sudo modprobe -r rtl8723de
```

```
sudo modprobe rtl8723de
```

**Note:** If you get very weak signal try changing your antenna selection

```
sudo tee /etc/modprobe.d/rtl8723de.conf <<< "options rtl8723de ant_sel=2"

```

**FINALLY, REBOOT**

#### Optional configuration

If it turns out that your system needs one of the configuration options, then do the following:

nano /etc/modprobe.d/<<YOUR WIRELESS DRIVER CODE>>.conf

There, enter the line below:

```
options rtl8723de <<driver_option_name>>=<value>
```

Refer the original **README** from [here](https://github.com/lwfinger/rtlwifi_new)

- ## Bluetooth Driver

Support for this bluetooth device had been just added to the 4.17rc kernel.

The code can be easily backported to kernels 4.4 - 4.15. Somebody made a PPA with DKMS packages for bionic and xenial with the updated btrtl module.

It can be installed by

```
sudo add-apt-repository ppa:hanipouspilot/bluetooth
```

```
sudo apt update
```

```
sudo apt install btrtl-rtl8723de-dkms
```

**REBOOT**

Follow these only if your wireless card is Realtek rtl8273de.
