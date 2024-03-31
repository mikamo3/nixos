{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      mkSystem = import ./lib/mksystem.nix {
        inherit nixpkgs inputs;
      };
    in
    {
      nixosConfigurations.kvm_sandbox = mkSystem {
        name = "kvm_sandbox";
        user = "mikamo";
        system = "x86_64-linux";
      };
    };
}
