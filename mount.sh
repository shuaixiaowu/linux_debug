#!/bin/bash

echo "Mounting file system"

sudo mount -t proc      /proc    ubuntu-rootfs/proc
sudo mount -t sysfs     /sys     ubuntu-rootfs/sys
sudo mount -t tmpfs     /tmp     ubuntu-rootfs/tmp
sudo mount -o bind      /dev     ubuntu-rootfs/dev
sudo mount -o bind      /dev/pts ubuntu-rootfs/dev/pts

echo "Change root"
sudo chroot ubuntu-rootfs
