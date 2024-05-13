{ ... }:
{
  programs.rofi.enable = true;
  programs.rofi.extraConfig =
    {
      modi = "drun,window,ssh";
      show-icons = true;
      sort = true;
      sidebar-mode = true;
      kb-remove-char-back = "BackSpace";
      kb-remove-to-eol = "Control+C";
      kb-accept-entry = "Return,KP_Enter";
      kb-mode-next = "Control+l";
      kb-mode-previous = "Control+h";
      kb-row-up = "Up,Control+k";
      kb-row-down = "Down,Control+j";
      kb-mode-complete = "";
    };
}
