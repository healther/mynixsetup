{
  description = "Multi-host NixOS configuration flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05"; # Or another version/branch
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, ... }:
    let
      # Discover host directories under ./hosts
      hostNames = builtins.filter (name: name != "default.nix")
        (builtins.attrNames (builtins.readDir ./hosts));

      mkHost = hostName: {
        name = hostName;
        value = nixpkgs.lib.nixosSystem {
          modules = [
            ./hosts/${hostName} # This now picks up default.nix
          ];
        };
      };

    in {
      nixosConfigurations = builtins.listToAttrs (map mkHost hostNames);
    };
}
