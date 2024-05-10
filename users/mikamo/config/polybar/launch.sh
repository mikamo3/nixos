#!/bin/bash
# check is running
if [[ $$ -ne $(pgrep -fo "$0") ]];then
  echo "Already running"
  exit 1
fi
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

master="Virtual-1"
net_interface="enp1s0"

MONITOR=$master polybar --reload -c ~/.config/polybar/config.ini top &
MONITOR=$master NET_INTERFACE=$net_interface polybar --reload -c ~/.config/polybar/config.ini bottom &

echo "Polybar launched..."
