{
  "module/cpu" = {
    type = "internal/cpu";
    interval = "0.5";
    format = "<label><ramp-coreload>";
    format-prefix = " ";
    label = "%percentage:2%%";
    ramp-coreload-spacing = 0;
    ramp-coreload-0 = "▁";
    ramp-coreload-1 = "▂";
    ramp-coreload-2 = "▃";
    ramp-coreload-3 = "▄";
    ramp-coreload-4 = "▅";
    ramp-coreload-5 = "▆";
    ramp-coreload-6 = "▇";
    ramp-coreload-7 = "█";
  };
  "module/date" = {
    type = "internal/date";
    interval = "1.0";
    time = "%Y-%m-%d %H:%M:%S";
    format = "<label>";
    label = "%time%";
  };
  "module/filesystem" = {
    type = "internal/fs";
    mount-0 = "/";
    interval = 10;
    fixed-values = true;
    format-mounted = "<label-mounted>";
    format-mounted-prefix = "";
    format-unmounted = "<label-unmounted>";
    format-unmounted-prefix = "";
    label-mounted = " %free%";
    label-unmounted = "%mountpoint%: not mounted";
  };

  "module/filesystem_bar" = {
    type = "internal/fs";
    mount-0 = "/";
    interval = 10;
    fixed-values = false;
    format-mounted = "<bar-used> <label-mounted>";
    format-mounted-prefix = " ";
    label-mounted = "%used:8%/%total:8%";
    bar-used-width = 10;
    bar-used-gradient = false;
    bar-used-indicator-foreground = "\$\{color.bi\}";
    bar-used-indicator-font = 2;
    bar-used-fill = "━";
    bar-used-foreground-0 = "\$\{color.bn\}";
    bar-used-foreground-1 = "\$\{color.bn\}";
    bar-used-foreground-2 = "\$\{color.bn\}";
    bar-used-foreground-3 = "\$\{color.bn\}";
    bar-used-foreground-4 = "\$\{color.bn\}";
    bar-used-foreground-5 = "\$\{color.bm\}";
    bar-used-foreground-6 = "\$\{color.bm\}";
    bar-used-foreground-7 = "\$\{color.bd\}";
    bar-used-foreground-8 = "\$\{color.bd\}";
    bar-used-fill-font = 2;
    bar-used-empty = "┉";
    bar-used-empty-foreground = "\$\{color.be\}";
    bar-used-empty-font = 2;
  };

  "module/workspaces" = {
    type = "internal/i3";
    pin-workspaces = false;
    strip-workspaces = true;
    index-sort = true;
    enable-click = true;
    enable-scroll = true;
    fuzzy-match = true;
    ws-icon-0 = "1\; ";
    ws-icon-1 = "2; ";
    ws-icon-2 = "3; ";
    ws-icon-3 = "4; ";
    ws-icon-4 = "5; ";
    ws-icon-5 = "6;";
    ws-icon-6 = "7; ";
    ws-icon-7 = "8; ";
    ws-icon-8 = "9;";

    format = "<label-state> <label-mode>";
    label-mode = "%mode%";
    label-mode-padding = 2;
    label-mode-background = "\$\{color.ac\}";
    label-focused = "%name% %icon%";
    label-focused-foreground = "\$\{color.ac\}";
    label-focused-background = "\$\{color.bgl\}";
    label-focused-overline = "\$\{color.ac\}";
    label-focused-padding = 2;
    label-visible = "%name% %icon%";
    label-visible-background = "\$\{color.bgl\}";
    label-visible-padding = 2;
    label-unfocused = "%name% %icon%";
    label-unfocused-padding = 2;
    label-urgent = "%name% %icon%";
    label-urgent-padding = 2;
  };

  "module/title" = {
    type = "internal/xwindow";
    format = "<label>";
    label = "%title%";
    label-font = 3;
    label-maxlen = 90;
  };

  "module/network" = {
    type = "internal/network";
    interface = "\$\{env:NET_INTERFACE\}";
    interval = 1;
    accumulate-stats = true;
    unknown-as-up = true;
    format-connected = "<label-connected>";
    format-disconnected = "<label-disconnected>";
    label-connected = "󰀂 %ifname% %local_ip%  %downspeed:10%  %upspeed:10%";
    label-disconnected = "󰀂 Not Connected";
    ramp-signal-0 = "a";
    ramp-signal-1 = "b";
    ramp-signal-2 = "c";
    ramp-signal-3 = "d";
    ramp-signal-4 = "e";
  };

  "module/bluetooth-volume" = {
    type = "internal/pulseaudio";
    sink = "bluez_sink.F4_4E_FD_00_39_23.a2dp_sink";
    use-ui-max = true;
    interval = 5;
    format-volume = "<ramp-volume> <label-volume> <bar-volume>";
    format-muted = "<label-muted>";
    label-volume = "%percentage%%";
    format-muted-prefix = "󰖁";
    label-muted = " Muted";
    label-muted-foreground = "\$\{color.ac\}";
    ramp-volume-0 = "";
    ramp-volume-1 = "";
    ramp-volume-2 = "";
    bar-volume-width = 10;
    bar-volume-gradient = false;
    bar-volume-indicator-foreground = "\$\{color.bi\}";
    bar-volume-indicator-font = 2;
    bar-volume-fill = "━";
    bar-volume-foreground-0 = "\$\{color.bn\}";
    bar-volume-foreground-1 = "\$\{color.bn\}";
    bar-volume-foreground-2 = "\$\{color.bn\}";
    bar-volume-foreground-3 = "\$\{color.bn\}";
    bar-volume-foreground-4 = "\$\{color.bm\}";
    bar-volume-foreground-5 = "\$\{color.bm\}";
    bar-volume-foreground-6 = "\$\{color.bm\}";
    bar-volume-foreground-7 = "\$\{color.bd\}";
    bar-volume-foreground-8 = "\$\{color.bd\}";
    bar-volume-fill-font = 2;
    bar-volume-empty = "┉";
    bar-volume-empty-foreground = "\$\{color.be\}";
    bar-volume-empty-font = 2;
    click-right = "pavucontrol";
  };
}
