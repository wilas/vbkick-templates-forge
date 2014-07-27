#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

# last update: 26/07/2014
sed -i 's;external_products/extras/$basearch;external_products/extras/extras/$basearch;g' /etc/yum.repos.d/sl-extras.repo
sed -i 's;external_products/extras/$basearch;external_products/extras/extras/SRPMS;g' /etc/yum.repos.d/sl-extras.repo
