{ nixpkgs, inputs }:

name:
{ system
, user
}:
let
  machineConfig = ../machines/${name}.nix;
  userConfig = ../users/${user}/nixos.nix;
in
nixpkgs.lib.nixosSystem rec{
  inherit system;
  modules = [
    machineConfig
    userConfig
  ];
}
