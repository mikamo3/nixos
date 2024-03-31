{ nixpkgs, inputs }:

{ name, user, system }:
let
  nixos-hardware = inputs.nixos-hardware;
  machineConfig = (import ../machines/${name}.nix { inherit nixos-hardware; });
  userConfig = ../users/${user}/nixos.nix;
  homeConfig = ../users/${user}/home.nix;
in
nixpkgs.lib.nixosSystem rec{
  inherit system;
  modules = [
    machineConfig
    inputs.home-manager.nixosModules.home-manager
    {
      home-manager.useGlobalPkgs = true;
      home-manager.useUserPackages = true;
      home-manager.users.${user} = import homeConfig;
    }
  ];

}
