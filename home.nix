{ pkgs, ... }:
{
  home = rec {
    username="alice";
    homeDirectory = "/home/${username}";
    stateVersion = "22.11";
  };
  programs.home-manager.enable = true;
  home.packages = with pkgs; [
    bat
    bottom
    eza
    httpie
    pingu
    ripgrep
  ];
}
