{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    feh
    xfce.catfish
    leafpad
  ];
}

