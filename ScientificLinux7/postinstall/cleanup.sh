#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

# system clean-up
yum -y clean all
