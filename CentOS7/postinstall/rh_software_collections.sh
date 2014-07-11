#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

echo "software collections for EL7 are not available yet (11/07/2014)."
exit 1

# Install software collections
yum -y install scl-utils scl-utils-build centos-release-SCL

# Quick test:
#yum -y install python33
#scl enable python33 'python --version'
