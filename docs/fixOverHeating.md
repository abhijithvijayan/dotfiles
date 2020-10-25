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

## Scaling drivers

<https://wiki.archlinux.org/index.php/CPU_frequency_scaling>

- **intel_pstate**: This driver implements a scaling driver with an internal governor for Intel Core (Sandy Bridge and newer) processors.
- **acpi-cpufreq**: CPUFreq driver which utilizes the ACPI Processor Performance States. This driver also supports the Intel Enhanced SpeedStep (previously supported by the deprecated speedstep-centrino module).

```
# see current driver
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_driver
```

## Scaling governors

- **performance**: Run the CPU at the maximum frequency.
- **powersave**: Run the CPU at the minimum frequency.
- **userspace**: Run the CPU at user specified frequencies.
- **ondemand**: Scales the frequency dynamically according to current load. Jumps to the highest frequency and then possibly back off as the idle time increases.
- **conservative**: Scales the frequency dynamically according to current load. Scales the frequency more gradually than ondemand.
- **schedutil**: Scheduler-driven CPU frequency selection.

```
# current governor
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

# setting to powersave
sudo cpupower frequency-set -g powersave
```

## Disable Intel pstate scaling driver (if needed)

To change back to the **ACPI driver**, add the following to the
`GRUB_CMDLINE_LINUX_DEFAULT` variable in the `/etc/default/grub` file:

```
intel_pstate=disable
```

 then rebuild the grub config

```
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

## Recommended Tool

## CPUfreq

```
# ubuntu
sudo apt-get install indicator-cpufreq

# arch
sudo snap install cpufreq
```
