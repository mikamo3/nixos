{ pkgs, ... }:
let
in
{
  environment.systemPackages = with pkgs; [
    chromium
    firefox
    google-chrome
  ];
}
