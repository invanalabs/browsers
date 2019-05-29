#!/usr/bin/env bash
# /opt/bin/start-xvfb.sh
export GEOMETRY="${SCREEN_WIDTH}""x""${SCREEN_HEIGHT}""x""${SCREEN_DEPTH}"
rm -f /tmp/.X*lock
rm -f /tmp/.X11-unix/X1
rm -f /tmp/.X1
rm -Rf  /home/admin/.XAuthority*
/usr/bin/Xvfb ${DISPLAY} -screen 0 ${GEOMETRY} -ac +extension RANDR  
