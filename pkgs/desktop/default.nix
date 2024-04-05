{ inputs, config, lib, pkgs, ... }:
{
  services.xserver = {
    enable = true;

    desktopManager = {
      xterm.enable = false;
    };

    displayManager = {
      defaultSession = "none+i3";
    };

    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        ulauncher #application launcher most people use
        i3status # gives you the default i3 status bar
        i3lock #default i3 screen locker
        i3blocks #if you are planning on using i3blocks over i3status
      ];
    };
  };
  services.gnome.gnome-keyring.enable = true;
  fonts = {
    packages = with pkgs; [
      hackgen-nf-font
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-emoji
      font-awesome
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
    feh
    flameshot
    gnome.file-roller
    gparted
    gthumb
    leafpad
    networkmanagerapplet
    volantes-cursors
    xdg-user-dirs
    xdg-utils
    xfce.catfish
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-volman
  ];
}

