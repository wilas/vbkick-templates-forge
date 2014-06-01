#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

if [[ ! -f "/etc/apt/sources.list.d/puppetlabs.list" ]]; then
    wget -O /tmp/puppetlabs-release-sid.deb http://apt.puppetlabs.com/puppetlabs-release-sid.deb
    dpkg -i /tmp/puppetlabs-release-sid.deb
    rm -f /tmp/puppetlabs-release-sid.deb
    apt-get -y update
fi
apt-get install -y puppet facter hiera
