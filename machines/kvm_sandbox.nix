{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [
    ./hardware/kvm_default.nix
  ];
}
