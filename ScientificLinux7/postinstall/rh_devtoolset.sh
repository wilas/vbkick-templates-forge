#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

echo "devtoolset for EL7 are not available yet (26/07/2014)."
exit 1

yum -y install scl-utils scl-utils-build
# Install yum-conf-devtoolset
if ! yum list installed yum-conf-devtoolset >/dev/null 2>&1; then
    rpm -ivh http://ftp.scientificlinux.org/linux/scientific/6x/external_products/devtoolset/yum-conf-devtoolset-1.0-1.el6.noarch.rpm
fi

# Quick test:
#yum -y install devtoolset-2-vc
#scl enable devtoolset-2 'git --version'
