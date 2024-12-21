#!/bin/bash

echo "Umounting file system"

sudo umount ubuntu-rootfs/proc
sudo umount ubuntu-rootfs/sys
sudo umount ubuntu-rootfs/tmp
sudo umount ubuntu-rootfs/dev/pts
sudo umount ubuntu-rootfs/dev
