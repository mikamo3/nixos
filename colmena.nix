{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixos-hardware, home-manager, ... }@inputs: {
    colmena = {
      meta = {
        nixpkgs = import nixpkgs
          {
            system = "x86_64-linux";
          };
        host-b = {
          deployment = {
            targetHost = "192.168.100.224";
            targetUser = "mikamo";
          };
          boot.isContainer = true;
          time.timeZone = "America/Los_Angeles";
        };
      };
    };
  };
}
