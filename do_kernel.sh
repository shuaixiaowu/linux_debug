#!/bin/bash

set -e

if [ $# -eq 0 ]; then
	echo "please specifying the path of kernel"
    exit 1
fi

KERNEL_PATH=$1
cd $KERNEL_PATH
make x86_64_defconfig
./scripts/config --enable CONFIG_DEBUG_INFO_DWARF4
./scripts/config --enable CONFIG_GDB_SCRIPTS
make all -j $(($(nproc) - 2))
echo "make done."