#!/bin/sh

LEVEL=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '$0~/percentage/{print $2}' |  egrep -o '[0-9]+')

if [ $LEVEL -le 15 ]
then
   notify-send --icon=gtk-info "Battery Critical" "${LEVEL}"
fi
