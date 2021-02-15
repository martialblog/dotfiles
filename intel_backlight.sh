#!/bin/bash
set -e

INTEL_BACKLIGHT="${INTEL_BACKLIGHT=/sys/class/backlight/intel_backlight}"

current=$(cat "${INTEL_BACKLIGHT}/brightness")
max=$(cat "${INTEL_BACKLIGHT}/max_brightness")
file="${INTEL_BACKLIGHT}/brightness"

case "$1" in
    "-inc")
        echo $(( current + ($2 * max) / 100 )) >> "$file"
        ;;
    "-dec")
        echo $(( current - ($2 * max) / 100 )) >> "$file"
        ;;
    "-set")
        echo $(( ($2 * max) / 100 )) >> "$file"
        ;;
    "-get")
        echo $(( (current * 100) / max ))
        ;;
    *)
        echo "Usage:
 $0 -dec <percent> # decrease brightness by percent
 $0 -inc <percent> # increase brightness by percentage
 $0 -set <percent> # decrease brightness by percentage
 $0 -get <percent> # get brightness in percent"
        ;;
esac

exit 0
