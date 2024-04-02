{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    feh
    xfce.catfish
    leafpad
    xdg-user-dirs
    gnome.file-roller
    flameshot
    gthumb
  ];
}

