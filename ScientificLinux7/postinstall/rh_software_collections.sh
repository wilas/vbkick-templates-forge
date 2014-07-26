#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

echo "software collections for EL7 are not available yet (26/07/2014)."
exit 1

yum -y install scl-utils scl-utils-build
# Install yum-conf-softwarecollections
if ! yum list installed yum-conf-softwarecollections >/dev/null 2>&1; then
    rpm -ivh http://ftp.scientificlinux.org/linux/scientific/6x/external_products/softwarecollections/yum-conf-softwarecollections-1.0-1.el6.noarch.rpm
fi

# Quick test:
#yum -y install python33
#scl enable python33 'python --version'
