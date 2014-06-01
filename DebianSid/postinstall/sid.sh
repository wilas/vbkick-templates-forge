#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

# Useful to upgrade from Jessie (testing) to Sid (unstable)
# Don't upgrade directly from stable to unstable:: https://wiki.debian.org/DebianUnstable

# udpdate packages repo to unstable (Sid)
if ! grep -q '^deb.*sid' /etc/apt/sources.list; then
        sed -i 's~^\s*deb\(.*\)~#deb\1~' /etc/apt/sources.list
        echo "" >> /etc/apt/sources.list
        echo "deb http://ftp.uk.debian.org/debian sid main" >> /etc/apt/sources.list
        echo "deb-src http://ftp.uk.debian.org/debian sid main" >> /etc/apt/sources.list
        #echo "deb http://ftp.uk.debian.org/debian sid main contrib non-free" >> /etc/apt/sources.list
        #echo "deb-src http://ftp.uk.debian.org/debian sid main contrib non-free" >> /etc/apt/sources.list
        apt-get -y update
fi

# upgrade and clean distro
apt-get -y dist-upgrade
apt-get -y autoremove
