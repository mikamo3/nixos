{ nixos-hardware }:
{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [
    ./hardware/kvm-default.nix
    ../pkgs/system/configure.nix
    ../pkgs/system/bluetooth.nix
    ../pkgs/system/apps.nix
    ../pkgs/system/kernel-zen.nix
    ../font.nix
    ../program.nix
    ../configuration.nix
  ]
  ++ (with nixos-hardware.nixosModules; [
    common-cpu-amd
    #common-gpu-amd
    common-pc-ssd
  ]);

  system.stateVersion = "23.11"; # Did you read the comment?
}
