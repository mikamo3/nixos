{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    fzf
    unzip
    zip
    p7zip
    xz
    bat
    htop
    eza
    neofetch
    aria2
    unar
    xsel
    xclip
    usbutils
    jq
    dmidecode
    silver-searcher
    sl
  ];
}
