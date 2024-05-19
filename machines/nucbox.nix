{ nixos-hardware }:
{ config, lib, pkgs, modulesPath, ... }:
let
  enableBluetooth = true;
  enableSound = true;
  bluetooth = import ./packages/system/bluetooth.nix { useBluetooth = enableBluetooth; };
  commonPackages = import ./packages/common.nix { inherit pkgs; };
in
{
  deployment = {
    targetHost = "192.168.100.224";
    targetUser = "mikamo";
  };
  imports = [
    ./hardware/nucbox.nix
    ./common.nix
    ./packages/common.nix
    bluetooth
    ./packages/desktop
    ./packages/browser
    ./packages/networkclient
    ./packages/security
    ./packages/storage
    ./packages/development/vscode.nix
  ]
  ++ (with nixos-hardware.nixosModules;
    [
      #common-gpu-amd
      common-pc-ssd
    ]);
  #    ../pkgs/desktop/font.nix
  #    ../pkgs/desktop/i3.nix
  #    ../pkgs/desktop/input.nix
  #    ../pkgs/development/docker.nix
  #    ../pkgs/development/avr.nix
  #    ../pkgs/development/git.nix
  #    ../pkgs/development/arduino.nix
  #    ../pkgs/development/kvm.nix
  #    ../pkgs/development/vscode.nix
  #    ../pkgs/document
  #    ../pkgs/sound/pipewire.nix
  #    ../pkgs/program.nix
  #    ../pkgs/browser
  #    #../pkgs/cad
  #    ../pkgs/communication
  #    ../pkgs/terminal/wezterm.nix
  #    ../pkgs/utils
  #    ../pkgs/media
  #  ]

  #
}
