{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixos-hardware, home-manager, ... }@inputs:
    let
      mkSystem = import ./lib/mksystem.nix {
        inherit nixpkgs nixos-hardware home-manager;
      };
    in
    {

      colmena = {
        meta = {
          nixpkgs = import nixpkgs
            {
              system = "x86_64-linux";
            };
        };
        host-b = {
          deployment = mkSystem {
            name = "nuxbox";
            user = "mikamo";
            system = "x86_64-linux";
          };

        };
      };


      nixosConfigurations.kvm-sandbox = mkSystem {
        name = "kvm-sandbox";
        user = "mikamo";
        system = "x86_64-linux";
      };
    };
}
