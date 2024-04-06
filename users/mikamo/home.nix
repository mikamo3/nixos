{ pkgs, services, ... }:
{
  home = rec {
    username = "mikamo";
    homeDirectory = "/home/${username}";
    stateVersion = "23.11";
  };
  programs.home-manager.enable = true;
  programs.powerline-go.enable = true;

  home.pointerCursor = with pkgs;{
    x11.enable = true;
    name = "volantes_cursors";
    package = volantes-cursors;
    size = 64;
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
    wezterm
    procs
    bash-completion
    feh
    xfce.catfish
    leafpad
    inkscape
    vlc
    spotify
    keepassxc
    grive2
    slack
    zoom
    sl
  ];
}
