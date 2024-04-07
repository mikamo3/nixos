{ pkgs, lib, ... }:
let
  cpuType = lib.mkDefault "amd";
in
{

  # common packages
  environment.systemPackages = with pkgs; [
    aria2
    bash-completion
    bat
    bottom
    dmidecode
    eza
    fzf
    git
    htop
    httpie
    iperf
    jq
    killall
    microcodeAmd
    mimeo
    neofetch
    nettools
    nodejs
    openjdk
    p7zip
    pingu
    procs
    python3
    ripgrep
    silver-searcher
    sl
    sshpass
    tcpdump
    unar
    unzip
    usbutils
    vim
    wget
    xclip
    xsel
    xz
    zip
  ]
  # microcode
  ++ lib.optional (cpuType == "amd") pkgs.microcodeAmd
  ++ lib.optional (cpuType == "intel") pkgs.microcodeIntel;

  #program
  programs = {
    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
    };
    fish.enable = true;
  };
}
