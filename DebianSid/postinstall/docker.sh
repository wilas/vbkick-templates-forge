#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

# Install Docker.io
apt-get -y install docker.io
