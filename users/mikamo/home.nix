{ config, lib, pkgs, ... }:
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

  xdg.enable = true;
  home.packages = with pkgs; [
  ];
  xdg.userDirs.enable = true;
  xdg.userDirs.createDirectories = true;

  #dotfiles
  xdg.configFile = {
    #i3
    "i3/config".text = builtins.readFile ./config/i3/config;
  };
  #dunst
  services.dunst = import ./dunst.nix { };
  programs.fish = import ./fish.nix { inherit pkgs; };
  programs.git = import ./git.nix { };
  services.picom = import ./picom.nix { };
  #rofi
  programs.rofi = import ./rofi.nix { };
  #polybar
  services.polybar = import ./polybar.nix { inherit pkgs; };

}
