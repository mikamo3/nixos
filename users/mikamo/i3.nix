{ config, lib, ... }: {
  xsession.windowManager.i3 = {
    enable = true;
    config = {
      bars = [ ];
      modifier = "Mod4";
      fonts = {
        names = [ "monospace" ];
        size = 12.0;
      };
      floating.criteria = [
        { class = "Pavucontrol"; }
        { class = "Authy Desktop"; }
        { class = "KeePassXC"; }
      ];
      window.commands = [
        {
          command = "move window to scratchpad, scratchpad show";
          criteria = { class = "Authy Desktop"; };
        }
        {
          command = "move window to scratchpad, scratchpad show";
          criteria = { class = "KeePassXC"; };
        }
      ];
      keybindings =
        let
          modifier = config.xsession.windowManager.i3.config.modifier;
        in
        lib.mkOptionDefault {

          # start a terminal
          "${modifier}+Return" = "exec wezterm";

          # kill focused window
          "${modifier}+Shift+q" = "kill";

          # change focus
          "${modifier}+h" = "focus left";
          "${modifier}+j" = "focus down";
          "${modifier}+k" = "focus up";
          "${modifier}+l" = "focus right";

          # move focused window
          "${modifier}+Shift+h" = "move left";
          "${modifier}+Shift+j" = "move down";
          "${modifier}+Shift+k" = "move up";
          "${modifier}+Shift+l" = "move right";

          # alternatively, you can use the cursor keys:
          "${modifier}+Shift+Left" = "move left";
          "${modifier}+Shift+Down" = "move down";
          "${modifier}+Shift+Up" = "move up";
          "${modifier}+Shift+Right" = "move right";

          # switch to workspace
          "${modifier}+1" = "workspace workspace number 1";
          "${modifier}+2" = "workspace workspace number 2";
          "${modifier}+3" = "workspace workspace number 3";
          "${modifier}+4" = "workspace workspace number 4";
          "${modifier}+5" = "workspace workspace number 5";
          "${modifier}+6" = "workspace workspace number 6";
          "${modifier}+7" = "workspace workspace number 7";
          "${modifier}+8" = "workspace workspace number 8";
          "${modifier}+9" = "workspace workspace number 9";

          # move focused container to workspace
          "${modifier}+Shift+1" = "move container to workspace workspace number 1";
          "${modifier}+Shift+2" = "move container to workspace workspace number 2";
          "${modifier}+Shift+3" = "move container to workspace workspace number 3";
          "${modifier}+Shift+4" = "move container to workspace workspace number 4";
          "${modifier}+Shift+5" = "move container to workspace workspace number 5";
          "${modifier}+Shift+6" = "move container to workspace workspace number 6";
          "${modifier}+Shift+7" = "move container to workspace workspace number 7";
          "${modifier}+Shift+8" = "move container to workspace workspace number 8";
          "${modifier}+Shift+9" = "move container to workspace workspace number 9";
          # split in horizontal orientation
          "${modifier}+bar" = "split h";

          # split in vertical orientation
          "${modifier}+minus" = "split v";

          # enter fullscreen mode for the focused container
          "${modifier}+f" = "fullscreen toggle";

          # change container layout (stacked, tabbed, toggle split)
          "${modifier}+s" = "layout stacking";
          "${modifier}+w" = "layout tabbed";
          "${modifier}+t" = "layout toggle split";

          # toggle tiling / floating
          "${modifier}+Shift+space" = "floating toggle";

          # change focus between tiling / floating windows
          "${modifier}+space" = "focus mode_toggle";

          # focus the parent container
          "${modifier}+a" = "focus parent";

          # reload the configuration file
          "${modifier}+Shift+c" = "reload";
          # restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
          "${modifier}+Shift+r" = "restart";
          "${modifier}+r" = "mode resize";
          "${modifier}+b" = "splith";
          "${modifier}+v" = "splitv";
          "${modifier}+p" = "scratchpad show";
          "${modifier}+Shift+p" = "move scratchpad";

          "${modifier}+Tab" = "workspace next";
          "${modifier}+Shift+Tab" = "workspace prev";
          "${modifier}+d" = "exec rofi -show";
          "${modifier}+e" = "exec nemo";
          # for rotary encorder
          "${modifier}+Left" = "resize shrink width 10 px or 10 ppt";
          "${modifier}+Right" = "resize grow width 10 px or 10 ppt";
          "${modifier}+Up" = "move right";
          "${modifier}+Down" = "move left";
        };
      modes = {
        resize = {
          h = "resize shrink width 10 px or 10 ppt";
          j = "resize grow height 10 px or 10 ppt";
          k = "resize shrink height 10 px or 10 ppt";
          l = "resize grow width 10 px or 10 ppt";

          # back to normal: Enter or Escape or $mod+r
          Return = "mode default";
          Escape = "mode default";
        };
      };
      gaps = {
        outer = 0;
        inner = 10;
        smartGaps = true;
        smartBorders = "on";
      };
      colors = {
        focused = rec{
          border = "#586e75";
          background = "#073642";
          text = "#cb4b16";
          indicator = background;
          childBorder = border;
        };
        focusedInactive = rec{
          border = "#93a1a1";
          background = "#EEE8D5";
          text = "#586e75";
          indicator = background;
          childBorder = border;
        };
        unfocused = rec{
          border = "#93a1a1";
          background = "#EEE8D5";
          text = "#586e75";
          indicator = background;
          childBorder = border;
        };
        urgent = rec{
          border = "#dc322f";
          background = "#dc322f";
          text = "#586e75";
          indicator = background;
          childBorder = border;
        };
      };
    };
  };
}
