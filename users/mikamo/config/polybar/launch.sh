#!/usr/bin/env bash
set -e
master="Virtual-1"
net_interface="enp1s0"

MONITOR=$master polybar --reload -c ~/.config/polybar/config.ini top &
MONITOR=$master NET_INTERFACE=$net_interface polybar --reload -c ~/.config/polybar/config.ini bottom &

echo "Polybar launched..."
