{ nixos-hardware }:
{ config, lib, pkgs, modulesPath, ... }:
let
  enableBluetooth = true;
  enableSound = true;
  bluetooth = import ../pkgs/system/bluetooth.nix { useBluetooth = enableBluetooth; };
in
{
  imports = [
    ./hardware/kvm-default.nix
    ./common.nix
    bluetooth
    ../pkgs/desktop
  ]
  ++ (with nixos-hardware.nixosModules;
    [
      common-cpu-amd
      #common-gpu-amd
      common-pc-ssd
    ]);
  #    ../pkgs/desktop/program.nix
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
