{ nixos-hardware }:
{ config, lib, pkgs, modulesPath, ... }:
{
  imports = [
    ./hardware/nucbox.nix
    ./common.nix
    ./packages/common.nix
    ./packages/system/bluetooth.nix
    ./packages/desktop
    ./packages/browser
    ./packages/networkclient
    ./packages/security
    ./packages/storage
    ./packages/sound
  ]
  ++ (with nixos-hardware.nixosModules;
    [
      common-gpu-intel
      common-pc-ssd
    ]);
}
