{ nixpkgs, nixos-hardware, home-manager }:

{ name, user, system }:
let
  machineConfig = (import ../machines/${name}.nix { inherit nixos-hardware; });
  userConfig = ../users/${user}/nixos.nix;
  homeConfig = ../users/${user}/home.nix;
in
rec{
  imports = [
    machineConfig
    userConfig
    home-manager.nixosModules.home-manager
    {
      home-manager.useGlobalPkgs = true;
      home-manager.useUserPackages = true;
      home-manager.users.${user} = import homeConfig;
    }
    {
      config._module.args = {
        currentSystem = system;
        currentSystemName = name;
        currentSystemUser = user;
      };
    }
  ];

}

