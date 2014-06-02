#!/bin/sh
set -e -u -o pipefail;

expected_device=/dev/sda
device=$(fdisk -l | grep "doesn't contain a valid partition table" | sed 's/Disk \(.*\) doesn.*/\1/' || true)
if [ "${expected_device}" = "${device}" ]; then
    (echo n; echo p; echo 1; echo ; echo ; echo w) | fdisk "${device}"
    mkfs.ext4 -L boot2docker_data "${device}1"
    echo "boot2docker-data ${device}1 parition was created."
fi
fdisk -l
