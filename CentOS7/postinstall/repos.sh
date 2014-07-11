#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

# List 3rd party repositories: http://wiki.centos.org/AdditionalResources/Repositories
arch=$(uname -m)

# Add EL repository
if ! yum list installed elrepo-release >/dev/null 2>&1; then
    rpm --import http://elrepo.org/RPM-GPG-KEY-elrepo.org
    rpm -Uvh http://elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm
fi

# Add EPEL repository
if ! yum list installed epel-release >/dev/null 2>&1; then
    rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7
    if [[ "${arch}" == 'x86_64' ]]; then
        rpm -ivh http://download.fedoraproject.org/pub/epel/beta/7/x86_64/epel-release-7-0.2.noarch.rpm
    elif [[ "${arch}" == 'i386' ]] || [[ "${arch}" = 'i686' ]]; then
        echo "EPEL for i386 is not available yet (11/07/2014)."
        exit 1
    fi
fi

# Add Atrpms repository
#if ! yum list installed atrpms-repo >/dev/null 2>&1; then
#    rpm --import http://packages.atrpms.net/RPM-GPG-KEY.atrpms
#    if [[ "${arch}" == 'x86_64' ]]; then
#        rpm -ivh http://dl.atrpms.net/el7-x86_64/atrpms/stable/atrpms-repo-7-7.el7.x86_64.rpm
#    elif [[ "${arch}" == 'i386' ]] || [[ "${arch}" == 'i686' ]]; then
#        echo "Atrpms for i386 is not available yet (11/07/2014)."
#        exit 1
#    fi
#fi

# Add Remi repository
#if ! yum list installed remi-release >/dev/null 2>&1; then
#    rpm --import http://rpms.famillecollet.com/RPM-GPG-KEY-remi
#    rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
#fi
