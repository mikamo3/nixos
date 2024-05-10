#/usr/bin/env bash
HEADSET_MACADDRESS="F4:4E:FD:00:39:23"

print_status() {
  if bluetoothctl info $HEADSET_MACADDRESS | grep -q "Connected: yes"; then
    echo "󰗾"
  else
    echo "󰗿"
  fi
}
toggle_connect() {
  if bluetoothctl info $HEADSET_MACADDRESS | grep -q "Connected: yes"; then
    bluetoothctl disconnect $HEADSET_MACADDRESS
  else
    bluetoothctl connect $HEADSET_MACADDRESS
  fi
  print_status

}
case "$1" in
--toggle)
  toggle_connect
  ;;
*)
  print_status
  sleep 10
  wait
  ;;
esac
