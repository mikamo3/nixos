{ inputs, config, lib, pkgs, ... }:
{
  programs = {
    neovim = {
      enable = true;
      defaultEditor = true; 
      viAlias = true;
      vimAlias = true;
    };
  };

  environment.systemPackages = with pkgs; [
    vim
    firefox
    chromium
    wget
    git
    inetutils
    sshpass
    nettools
    tcpdump
    python3
    nodejs
    openjdk
    grim # screenshot functionality
    slurp # screenshot functionality
    wl-clipboard # wl-copy and wl-paste for copy/paste from stdin / stdout
    mako # notification system developed by swaywm maintainer
    helvum
    ffmpeg
    flameshot
    firejail
    gparted
    veracrypt
    ulauncher
  ];
}
