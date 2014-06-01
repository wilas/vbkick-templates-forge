#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

# fix cursor: http://community.kde.org/Plasma/Active/Info/FAQ#How_do_I_get_a_Mouse_Cursor.3F
if rpm -q plasma-mobile-mouse --quiet; then
    rpm -e plasma-mobile-mouse
fi

# Remove the -nocursor option from /etc/sysconfig/uxlaunch
# file doesn't exist at the moment - 20/10/2013

# Restart the GUI: reboot or reload X (this doesn't work from script)
#init 3 && init 5
