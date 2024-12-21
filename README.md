# linux_debug
script for kernel&userspace debug

# 步骤
调试驱动:首先启动qemu，正常进入系统，然后启动gdb,设置断点。
调试内核：首先启动qemu(使用-S选项),然后启动gdb，使用hbreak设置断点。

# 注意
驱动编译应该在主机上进行，这样更容易找到符号表和源码
