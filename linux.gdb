focus
add-auto-load-safe-path /root/wushuaixiao/code_framework/linux
file /root/wushuaixiao/code_framework/linux/vmlinux 
source /root/wushuaixiao/code_framework/linux/vmlinux-gdb.py
target remote tcp:127.0.0.1:1234
#lx-symbol generic_nic_framwork
hbreak start_kernel
