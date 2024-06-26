{
  "bar/top" = {
    monitor = "\$\{env:MONITOR:\}";
    monitor-fallback = "";
    monitor-strict = false;
    override-redirect = false;
    bottom = false;
    width = "100%";
    height = 32;
    offset-x = "0%";
    offset-y = "0%";
    background = "$\{color.bg\}";
    foreground = "$\{color.fg\}";
    radius-top = 0;
    radius-bottom = 0;
    overline-size = 2;
    overline-color = "$\{color.ac\}";
    border-bottom-size = 1;
    border-color = "$\{color.ac\}";
    padding = 0;
    module-margin-left = 2;
    module-margin-right = 2;
    font-0 = "PlemolJP Console NF:style=Regular:size=14;2";
    modules-left = "workspaces";
    modules-center = "title";
    modules-right = "autorandr bluetooth-headset bluetooth-volume calendar date";
    spacing = 0;
    dim-value = 1;
    tray-position = "right";
    tray-detached = false;
    tray-maxsize = 24;
    tray-background = "$\{color.bg\}";
    tray-scale = 1;
    enable-ipc = true;
  };
  "bar/top_right" = {
    monitor = "\$\{env:MONITOR:\}";
    monitor-fallback = "";
    monitor-strict = false;
    override-redirect = false;
    bottom = false;
    width = "100%";
    height = 32;
    offset-x = "0%";
    offset-y = "0%";
    background = "$\{color.bg\}";
    foreground = "$\{color.fg\}";
    radius-top = 0;
    radius-bottom = 0;
    overline-size = 2;
    overline-color = "$\{color.ac\}";
    border-bottom-size = 1;
    border-color = "$\{color.ac\}";
    padding = 0;
    module-margin-left = 2;
    module-margin-right = 2;
    font-0 = "PlemolJP Console NF:style=Regular:size=14;2";
    modules-left = "workspaces";
    modules-right = "bluetooth-headset bluetooth-volume date";
    spacing = 0;
    dim-value = 1;
    tray-position = "right";
    tray-detached = false;
    tray-maxsize = 24;
    tray-background = "$\{color.bg\}";
    tray-scale = 1;
    enable-ipc = true;
  };
  "bar/bottom" = {
    monitor = "$\{env:MONITOR:\}";
    monitor-strict = false;
    override-redirect = false;
    bottom = true;
    fixed-center = true;
    width = "100%";
    height = 32;
    offset-x = "1%";
    offset-y = "2%:-3";
    background = "$\{color.bg\}";
    foreground = "$\{color.fg\}";
    radius-top = 0;
    radius-bottom = 0;
    overline-size = 2;
    overline-color = "$\{color.ac\}";
    border-bottom-size = 2;
    border-color = "$\{color.ac\}";
    padding = 0;
    module-margin-left = 2;
    module-margin-right = 2;
    font-0 = "PlemolJP Console NF:size=14;2";
    modules-left = "uptime";
    modules-right = "cpu filesystem_bar memory_bar network";
    spacing = 0;
    dim-value = 1;
    tray-position = "none";
    tray-detached = true;
    tray-maxsize = 16;
    tray-transparent = false;
    tray-background = "$\{color.bg\}";
    tray-padding = 0;
    tray-scale = 1;
    enable-ipc = true;
  };
}
