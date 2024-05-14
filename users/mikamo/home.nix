{ config, lib, pkgs, ... }:
{
  imports = [
    ./dunst.nix
    ./fish.nix
    ./git.nix
    ./picom.nix
    ./rofi.nix
    ./polybar.nix
    ./fontconfig.nix
    ./wezterm.nix
    ./i3.nix
  ];
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

  xdg.enable = true;
  home.packages = with pkgs; [
  ];
  xdg.userDirs.enable = true;
  xdg.userDirs.createDirectories = true;

  #dotfiles
  xdg.configFile = { };

}
