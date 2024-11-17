#!/bin/bash
br_name="work-br0"
sudo ip tuntap add $1 mode tap
sudo ip link set dev $1 up
sudo ip link set $1 master ${br_name}
