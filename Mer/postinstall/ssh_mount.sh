#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

# Mount custom ssh on the system
if ! grep -q 'ssh' /etc/fstab; then
    echo 'ssh     /home/mersdk/.ssh     vboxsf rw,exec,uid=1001,gid=1001,dev  0 0' >> /etc/fstab
fi
if ! mount | grep -q 'ssh'; then
    mount -a
fi
