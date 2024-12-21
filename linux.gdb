focus
add-auto-load-safe-path /root/wushuaixiao/code_framework/linux
add-auto-load-safe-path /root/wushuaixiao/ddpt/rjn/ubuntu-rootfs/root/driver
dir /root/wushuaixiao/ddpt/rjn/ubuntu-rootfs/root/driver
file /root/wushuaixiao/code_framework/linux/vmlinux 
source /root/wushuaixiao/code_framework/linux/vmlinux-gdb.py
target remote tcp:127.0.0.1:1234
#lx-symbol generic_nic_framwork
lx-symbol /root/wushuaixiao/ddpt/rjn/ubuntu-rootfs/root/driver
#add-symbol-file /root/wushuaixiao/ddpt/rjn/ubuntu-rootfs/root/tiny.ko 0xffffffffc0000000
hbreak start_kernel
