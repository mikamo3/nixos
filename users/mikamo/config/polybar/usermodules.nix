{ pkgs }:
let
  uptime = pkgs.writeShellScriptBin "polybar_uptime" (builtins.readFile ./scripts/uptime.sh);
  bluetooth_headset = pkgs.writeShellScriptBin "polybar_bluetooth_headset" (builtins.readFile ./scripts/bluetooth_headset.sh);
  show_calendar = pkgs.writeShellScriptBin "polybar_show_calendar" (builtins.readFile ./scripts/show_calendar.sh);
  autorandr = pkgs.writeShellScriptBin "polybar_autorandr" (builtins.readFile ./scripts/autorandr.sh);

in
{
  "module/uptime" = {
    type = "custom/script";
    exec = "${uptime}/bin/polybar_uptime";
    interval = 60;
    format = "<label>";
    label = "󰁫 %output%";
  };
  "module/bluetooth-headset" = {
    type = "custom/script";
    exec = "${bluetooth_headset}/bin/polybar_bluetooth_headset";
    exec-if = "systemctl is-active \"bluetooth.service\"";
    tail = true;
    click-left = "${bluetooth_headset}/bin/polybar_bluetooth_headset - -toggle &";
  };
  "module/calendar" = {
    type = "custom/text";
    content = "󰁫 ";
    click-left = "${show_calendar}/bin/polybar_show_calendar";
  };
  "module/autorandr" = {
    type = "custom/text";
    content = "󰍺 ";
    click-left = "${autorandr}/bin/polybar_autorandr";
  };
}
