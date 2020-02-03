```
sudo apt install lm-sensors hddtemp psensor

sudo sensors-detect

sudo service module-init-tools restart

sensors

cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_driver
```

Ref:
- https://brezular.com/2019/02/05/ubuntu-18-04-overheating/
- https://askubuntu.com/a/1034036

Add the following to the
`GRUB_CMDLINE_LINUX_DEFAULT` variable in the `/etc/default/grub` file: `intel_pstate=disable` then rebuild the grub config
```
grub-mkconfig -o /boot/grub/grub.cfg
```

## Recommended Tool

## CPUfreq
```
sudo apt-get install indicator-cpufreq
```
