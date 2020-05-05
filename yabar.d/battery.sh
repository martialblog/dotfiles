#!/bin/sh

LEVEL=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '$0~/percentage/{print $2}' |  egrep -o '[0-9]+')

if [ $LEVEL -le 15 ]; then
    echo "!Y BG 0xFFFF0000 Y! BAT ${LEVEL}%"
else
    echo "!Y BG 0xFF00AA00 Y! BAT ${LEVEL}%"
fi
