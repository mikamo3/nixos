{ nixpkgs, inputs }:

{ name, user, system }:
let
  machineConfig = (import ../machines/${name}.nix { inherit inputs; });
  userConfig = ../users/${user}/nixos.nix;
in
nixpkgs.lib.nixosSystem rec{
  inherit system;
  modules = [
    machineConfig
    userConfig

  ];

}
