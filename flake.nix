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
      mkSystem = import ./lib/mksystemcolmena.nix {
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
        nucbox = {
          deployment = {
            targetHost = "192.168.100.224";
            targetUser = "root";
          };
        } // mkSystem {
          name = "nucbox";
          user = "mikamo";
          system = "x86_64-linux";
        };
      };


      nixosConfigurations.kvm-sandbox = mkSystem {
        name = "kvm-sandbox";
        user = "mikamo";
        system = "x86_64-linux";
      };
    };
}
