#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

# howto: http://xavinux.blogspot.com.ar/2013/06/update-nemo-after-instalation.html
# change dir to /
cd /
# refresh all repositories
zypper ref
# update packages
zypper up
# upgrade
zypper dup
# `zypper -h` #for more info
