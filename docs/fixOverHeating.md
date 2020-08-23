## Calibrate

```
# Ubuntu
sudo apt install lm-sensors hddtemp psensor

# Arch
yay -S hddtemp hddtemp psensor
```
```
sudo sensors-detect
# ubuntu
sudo service module-init-tools restart
sensors
```

## Disable Intel pstate scaling driver

```
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_driver
```

Add the following to the
`GRUB_CMDLINE_LINUX_DEFAULT` variable in the `/etc/default/grub` file:

```
intel_pstate=disable
```

 then rebuild the grub config

```
grub-mkconfig -o /boot/grub/grub.cfg
```

## Recommended Tool

## CPUfreq

```
sudo apt-get install indicator-cpufreq
```
