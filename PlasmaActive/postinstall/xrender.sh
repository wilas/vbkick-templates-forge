#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

# fix cursor: http://community.kde.org/Plasma/Active/Info/FAQ#How_do_I_get_a_Mouse_Cursor.3F
sed -i "s:Backend=OpenGL:Backend=XRender:" /usr/share/kde4/config/kwinactiverc

# Restart the GUI: reboot or reload X (this doesn't work from script)
#init 3 && init 5
