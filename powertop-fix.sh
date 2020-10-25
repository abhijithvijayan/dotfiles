#!/bin/sh

# Generated from `sudo powertop --html=powerreport.html`

# Wake-on-lan status for device eno1
echo 'enabled' > '/sys/class/net/eno1/device/power/wakeup';
# Wake-on-lan status for device wlo1
echo 'enabled' > '/sys/class/net/wlo1/device/power/wakeup';
# Wake status for USB device usb1
echo 'enabled' > '/sys/bus/usb/devices/usb1/power/wakeup';
# Wake status for USB device usb2
echo 'enabled' > '/sys/bus/usb/devices/usb2/power/wakeup';
# Wake status for USB device 1-4
echo 'enabled' > '/sys/bus/usb/devices/1-4/power/wakeup';