#!/usr/bin/env bash
set -e

master=$(xrandr | grep " connected primary" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")
net_interface="enp1s0"

MONITOR=$master polybar --reload -c ~/.config/polybar/config.ini top &
MONITOR=$master polybar --reload -c ~/.config/polybar/config.ini bottom &

echo "Polybar launched..."
