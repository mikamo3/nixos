{ pkgs, services, ... }:
{
  home = rec {
    username = "mikamo";
    homeDirectory = "/home/${username}";
    stateVersion = "23.11";
  };
  programs.home-manager.enable = true;
  programs.powerline-go.enable = true;

  home.pointerCursor = with pkgs;{
    x11.enable = true;
    name = "volantes_cursors";
    package = volantes-cursors;
    size = 64;
  };
  home.packages = with pkgs; [
  ];
}
