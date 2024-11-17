#!/bin/bash

set -e

#if [ $# -eq 0 ]; then
#	echo "please specifying the mode of operation"
#    exit 1
#fi
KERNEL_PATH="${1:-"/root/wushuaixiao/code_framework/linux/"}"
mode="${2:-no_fs}"

if [[ "$mode" == "local" ]]; then
qemu-system-x86_64 -m 2g -boot menu=on  -kernel /root/wushuaixiao/code_framework/linux/arch/x86_64/boot/bzImage \
	   	-hda /root/wushuaixiao/ddpt/ubuntu.ext4 \
	   	--append "root=/dev/sda rw console=ttyS0 nokaslr" -nographic -enable-kvm \
		-s \
		-S
elif [[ "$mode" == "nfs" ]]; then
qemu-system-x86_64 -m 2g -nographic -enable-kvm \
        -kernel linux-stable/arch/x86/boot/bzImage \
        --append "root=/dev/nfs rw nfsroot=192.168.130.1:/home/wushuaixiao/ddpt/rjn/ubuntu-rootfs,nfsvers=3 ip=192.168.130.2:192.168.130.1:255.255.255.0:eth0:off console=ttyS0 nokaslr" \
        -device virtio-net-pci,netdev=tap0 -netdev tap,id=tap0,ifname=tap0,script=qemu_ctrl_eth_up.sh,downscript=qemu_ctrl_eth_down.sh
        # -net nic -net tap,ifname=tap0,script=qemu_ctrl_eth_up.sh,downscript=qemu_ctrl_eth_down.sh
elif [[ "$mode" == "net" ]]; then
		echo "define bridge..."
elif [[ "$mode" == "no_fs" ]]; then
qemu-system-x86_64 -m 2g  -kernel $KERNEL_PATH/arch/x86_64/boot/bzImage \
	   	--append "console=ttyS0 nokaslr" \
		-nographic -enable-kvm \
		-s \
		-S
else
		echo "error mode"
fi
