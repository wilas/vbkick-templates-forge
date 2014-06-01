#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

# Add vbkick user and group
/usr/sbin/groupadd vbkick
/usr/sbin/useradd vbkick -g vbkick -G wheel -c "vbkick"
# set password
echo vbkick:vbkick | /usr/sbin/chpasswd
# give sudo access (grants all permissions to user vbkick)
echo "vbkick ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/vbkick
chmod 0440 /etc/sudoers.d/vbkick
# add vbkick's public key - user can ssh without password
mkdir -pm 700 ~vbkick/.ssh
wget -O ~vbkick/.ssh/authorized_keys --no-check-certificate https://raw.github.com/wilas/vbkick/master/keys/vbkick_key.pub
chmod 0600 ~vbkick/.ssh/authorized_keys
chown -R vbkick:vbkick ~vbkick/.ssh
