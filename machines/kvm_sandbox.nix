{ nixos-hardware }:
{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [
    ./hardware/kvm_default.nix
    ../system.nix
    ../network.nix
    ../font.nix
    ../program.nix
    ../configuration.nix
  ]
  ++ (with nixos-hardware.nixosModules; [
    common-cpu-amd
    #common-gpu-amd
    common-pc-ssd
  ]);
}
