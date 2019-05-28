#!/usr/bin/env bash
# /opt/bin/start-xvfb.sh
export GEOMETRY="${SCREEN_WIDTH}""x""${SCREEN_HEIGHT}""x""${SCREEN_DEPTH}"
rm -f /tmp/.X*lock
/usr/bin/Xvfb ${DISPLAY} -screen 0 ${GEOMETRY} -ac +extension RANDR  