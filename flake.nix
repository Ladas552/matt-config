{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # Home-manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };
  outputs =
    inputs@{ self, nixpkgs, ... }:
    {
      nixosConfigurations = {
        Matt = nixpkgs.lib.nixosSystem {
          modules = [
            ./configuration.nix
            inputs.home-manager.nixosModules.home-manager
          ];
        };
      };
    };
}
