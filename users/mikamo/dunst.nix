{ ... }: {
  services.dunst.enable = true;
  services.dunst.settings = {
    global = {
      monitor = 0;
      follow = "mouse";
      geometry = "600x20-60+40";
      progress_bar = "true";
      progress_bar_height = 10;
      progress_bar_frame_width = 1;
      progress_bar_min_width = "150";
      progress_bar_max_width = "300";
      indicate_hidden = "yes";
      shrink = "no";
      transparency = 0;
      notification_height = 0;
      separator_height = 2;
      padding = 8;
      horizontal_padding = 8;
      text_icon_padding = 0;
      frame_width = 3;
      frame_color = "#aaaaaa";
      sort = "yes";
      idle_threshold = 120;
      font = "Monospace 12";
      line_height = 0;
      markup = "full";
      format = "<b>%s</b>\\n%b";
      alignment = "left";
      vertical_alignment = "center";
      show_age_threshold = 60;
      word_wrap = "yes";
      ellipsize = "middle";
      ignore_newline = "no";
      stack_duplicates = "true";
      hide_duplicate_count = "false";
      show_indicators = "yes";
      icon_position = "left";
      min_icon_size = 0;
      max_icon_size = 32;
      sticky_history = "yes";
      history_length = 20;
      always_run_script = "true";
      title = "Dunst";
      class = "Dunst";
      startup_notification = "false";
      verbosity = "mesg";
      corner_radius = 0;
      ignore_dbusclose = false;
      force_xwayland = false;
      force_xinerama = false;
      mouse_left_click = "close_current";
      mouse_middle_click = "do_action, close_current";
      mouse_right_click = "close_all";
    };
    urgency_low = {
      background = "#222222";
      foreground = "#888888";
      timeout = 10;
    };
    urgency_normal = {
      background = "#285577";
      foreground = "#ffffff";
      timeout = 10;
    };
    urgency_critical = {
      background = "#900000";
      foreground = "#ffffff";
      frame_color = "#ff0000";
      timeout = 0;
    };
  };
}
