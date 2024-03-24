{ pkgs,services, ... }:
{
  home = rec {
    username="mikamo";
    homeDirectory = "/home/${username}";
    stateVersion = "23.11";
  };
  programs.home-manager.enable = true;
  home.packages = with pkgs; [
    bat
    mimeo
    bottom
    eza
    httpie
    pingu
    ripgrep
    iperf
  ];
}
