{ inputs, config, lib, pkgs, ... }:
let
in
{
  services.xserver = {
    enable = true;

    desktopManager = {
      xterm.enable = false;
    };
    displayManager = {
      defaultSession = "none+i3";
      lightdm.greeters.slick = {
        enable = true;
        font.name = "Noto Serif CJK JP";
      };
    };

    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        dmenu
        ulauncher #application launcher most people use
        i3status # gives you the default i3 status bar
        i3lock #default i3 screen locker
        i3blocks #if you are planning on using i3blocks over i3status
        polybar
      ];
    };
  };
  services.gnome.gnome-keyring.enable = true;

  fonts = {
    packages = with pkgs; [
      font-awesome
      hackgen-nf-font
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-emoji
      (import ../../../pkgs/fonts/cica { inherit pkgs; })
      (import ../../../pkgs/fonts/plemoljp { inherit pkgs; })
      (import ../../../pkgs/fonts/line-seed-jp { inherit pkgs; })
    ];
  };
  # TODO:fontconfig
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-mozc
      fcitx5-gtk
    ];
  };

  # default desktop applications
  environment.systemPackages = with pkgs; [
    autorandr
    dex
    dunst
    feh
    flameshot
    fontconfig
    gnome.file-roller
    gparted
    gthumb
    gucharmap
    leafpad
    networkmanagerapplet
    picom
    volantes-cursors
    wezterm
    xdg-user-dirs
    xdg-utils
    xfce.catfish
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-volman
    gnome.seahorse
  ];
}

