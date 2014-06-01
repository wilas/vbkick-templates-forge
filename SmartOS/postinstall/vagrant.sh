#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

PTH=/opt

# prepare smartos (by @aszeszo)
wget -O $PTH/prepare-smartos-box.sh http://dlc-int.openindiana.org/aszeszo/vagrant/scripts/prepare-smartos-box.sh 
# todo [LOW]: problem when VBoxGuestAdditions iso is attached - line17: disklist -r | awk '{print $1}'

# Uncomment SetupBootDisk - if you want create bootable disk from iso
#sed -i '' 's/^#SetupBootDisk$/SetupBootDisk/g' $PTH/prepare-smartos-box.sh

# Choose SmartMachine
cd $PTH && bash prepare-smartos-box.sh 0084dad6-05c1-11e3-9476-8f8320925eea #13.2
#cd $PTH && bash prepare-smartos-box.sh 9eac5c0c-a941-11e2-a7dc-57a6b041988f #13.1

# Download VM tools
# virtualbox
wget -O $PTH/opt-tools-virtualbox.tar.bz2 http://dlc-int.openindiana.org/aszeszo/vagrant/scripts/tools/opt-tools-virtualbox-4.2.16.tar.bz2
cd $PTH && bzip2 -d opt-tools-virtualbox.tar.bz2
cd $PTH && tar -xvf opt-tools-virtualbox.tar
# vmware
#wget -O $PTH/opt-tools-vmware.tar.bz2 http://dlc-int.openindiana.org/aszeszo/vagrant/scripts/tools/opt-tools-vmware-9.2.2.tar.bz2
#cd $PTH && bzip2 -d opt-tools-vmware.tar.bz2
#cd $PTH && tar -xvf opt-tools-vmware.tar

# In zone "zone":
# DHCP gave me 10.0.2.16, after reboot I expect 10.0.2.15; otherwise ssh to varant dosen't work
zlogin -l vagrant zone sudo ifconfig net0 dhcp release

# Cleaning 
rm -rf $PTH/opt-tools*.tar
# Clean shutdown, then run `vbkick export VM_NAME`
#/usr/sbin/shutdown -y -g0 -i5
