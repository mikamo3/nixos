{ lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    mimeo
  ];
}

