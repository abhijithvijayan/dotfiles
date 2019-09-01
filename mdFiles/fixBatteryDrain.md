## Power Saving Tweaks

### Prolong battery life and prevent overheating

```
sudo apt install tlp tlp-rdw
sudo tlp start
```

### Enable ALPM:

```
echo SATA_ALPM_ENABLE=true | sudo tee /etc/pm/config.d/sata_alpm
```

### Enable i915 Framebuffer Compression

To enable,

```
sudo nano /etc/default/grub
```

change:

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
```

to:

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash i915.i915_enable_fbc=1"
```

and run:

```
sudo update-grub
```

### Reduce Wakeup Events

```
gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_blink_mode off
```
