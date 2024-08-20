#!/bin/bash

# Set the desired niceness value (lower is higher priority)
niceness=-20

# Find QEMU processes
qemu_pids=$(ps -axu | grep qemu | cut -d ' ' -f8 | tr -d '\n')

# Iterate over QEMU PIDs and set niceness
for pid in $qemu_pids; do
    sudo renice -n $niceness $pid
done
