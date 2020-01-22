## Fix Bootloop on shutdown

```
sudo nano /etc/default/grub
```

change

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
```

to:

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash noacpi idle=nomwait"
```
