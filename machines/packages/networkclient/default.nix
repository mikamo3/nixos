{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    qbittorrent
    remmina
    filezilla
  ];
}


