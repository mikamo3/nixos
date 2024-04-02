{ nixos-hardware }:
{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [
    ./hardware/kvm-default.nix
    ../pkgs/system/configure.nix
    ../pkgs/system/bluetooth.nix
    ../pkgs/system/apps.nix
    ../pkgs/system/kernel-zen.nix
    ../pkgs/desktop/program.nix
    ../pkgs/desktop/font.nix
    ../pkgs/desktop/i3.nix
    ../pkgs/desktop/input.nix
    ../pkgs/development/docker.nix
    ../pkgs/development/avr.nix
    ../pkgs/development/git.nix
    ../pkgs/development/arduino.nix
    ../pkgs/development/kvm.nix
    ../pkgs/development/vscode.nix
    ../pkgs/document
    ../pkgs/sound/pipewire.nix
    ../pkgs/program.nix
    ../pkgs/browser
    ../pkgs/cad
    ../pkgs/communication
    ../pkgs/terminal/wezterm.nix
    ../pkgs/utils
  ]
  ++ (with nixos-hardware.nixosModules; [
    common-cpu-amd
    #common-gpu-amd
    common-pc-ssd
  ]);

  system.stateVersion = "23.11"; # Did you read the comment?
}
