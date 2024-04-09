{ ... }: {
  enable = true;
  shadow = true;
  shadowExclude = [
    "class_g ?= 'Notify-osd'"
    "class_g ?= 'ulauncher'"
    "class_g = 'Cairo-clock'"
    "_GTK_FRAME_EXTENTS@:c"
  ];
  fade = true;
  vSync = true;
  wintypes =
    {
      tooltip = { fade = true; shadow = true; opacity = 0.75; focus = true; full-shadow = false; };
      dock = { shadow = false; clip-shadow-above = true; };
      dnd = { shadow = false; };
      menu = { shadow = false; };
      popup_menu = { opacity = 0.8; };
      dropdown_menu = { opacity = 0.8; };
    };
}
