#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

# Install docker
yum -y install docker
if ! systemctl status docker > /dev/null; then
    systemctl start docker
    systemctl enable docker
fi

# Quick test
# sudo systemctl status docker
# sudo docker info
# sudo docker run -i -t busybox /bin/sh
