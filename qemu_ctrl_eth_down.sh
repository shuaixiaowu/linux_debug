#!/bin/bash
br_name="work-br0"
sudo ip link set $1 nomaster
sudo ip link set dev $1 down
sudo ip tuntap del $1 mode tap
