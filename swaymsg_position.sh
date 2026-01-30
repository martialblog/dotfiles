#!/bin/bash

outputs=$(swaymsg -t get_outputs | grep -E '"name":' | awk -F'"' '{print $4}')
primary="eDP-1"
secondary=""

# Find the secondary monitor (not eDP-1)
for output in $outputs; do
    if [[ "$output" != "$primary" ]]; then
        secondary="$output"
        break
    fi
done

if [[ -z "$secondary" ]]; then
    echo "Error: Could not find a secondary monitor."
    exit 1
fi

# Set the positions
swaymsg output "$primary" pos 0 0
