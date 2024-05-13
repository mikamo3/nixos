{ ... }: {
  services.picom.enable = true;
  services.picom.shadow = true;
  services.picom.shadowExclude = [
    "class_g ?= 'Notify-osd'"
    "class_g ?= 'ulauncher'"
    "class_g = 'Cairo-clock'"
    "_GTK_FRAME_EXTENTS@:c"
  ];
  services.picom.fade = true;
  services.picom.vSync = true;
  services.picom.wintypes =
    {
      tooltip = { fade = true; shadow = true; opacity = 0.75; focus = true; full-shadow = false; };
      dock = { shadow = false; clip-shadow-above = true; };
      dnd = { shadow = false; };
      menu = { shadow = false; };
      popup_menu = { opacity = 0.8; };
      dropdown_menu = { opacity = 0.8; };
    };
}
