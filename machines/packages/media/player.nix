{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    vlc
    mcomix
    spotify
  ];
}


