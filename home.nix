{ pkgs,services, ... }:
{
  home = rec {
    username="mikamo";
    homeDirectory = "/home/${username}";
    stateVersion = "23.11";
  };
  programs.home-manager.enable = true;
  programs.powerline-go.enable=true;
  wayland.windowManager.sway = {
    enable = true;
    config = rec {
      modifier = "Mod4";
      # Use kitty as default terminal
      terminal = "kitty"; 
      startup = [
        # Launch Firefox on start
        {command = "firefox";}
      ];
    };
  };

  home.packages = with pkgs; [
    bat
    mimeo
    bottom
    eza
    httpie
    pingu
    ripgrep
    iperf
    fzf
    zip
    p7zip
    xz
    htop
    neofetch
    aria2
    unar
    xsel
    xclip
    usbutils
    jq
    dmidecode
    silver-searcher
    wezterm
    procs
    bash-completion
  ];
}
