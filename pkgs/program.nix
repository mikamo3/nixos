{ inputs, config, lib, pkgs, ... }:
{


  environment.systemPackages = with pkgs; [
    firejail
  ];
}
