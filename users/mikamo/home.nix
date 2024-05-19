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
    ./autorandr.nix
    ./fonts.nix
  ];
  home = rec {
    username = "mikamo";
    homeDirectory = "/home/${username}";
    stateVersion = "23.11";
  };
  systemd.user.targets.tray = {
    Unit = {
      Description = "Home Manager System Tray";
      Requires = [ "graphical-session-pre.target" ];
    };
  };
  programs.home-manager.enable = true;
  programs.powerline-go.enable = true;
  xsession.enable = true;
  home.pointerCursor = with pkgs;{
    x11.enable = true;
    name = "volantes_cursors";
    package = volantes-cursors;
    size = 64;
  };
  i18n.inputMethod.enabled = "fcitx5";
  i18n.inputMethod.fcitx5.addons = with pkgs; [
    fcitx5-mozc
    fcitx5-gtk
  ];
  services.network-manager-applet.enable = true;
  xdg.enable = true;
  home.packages = with pkgs; [
  ];
  xdg.userDirs.enable = true;
  xdg.userDirs.createDirectories = true;

  #dotfiles
  xdg.configFile = { };

}
