{
  description = "Nix Configs";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nix-homebrew.url = "github:zhaofengli/nix-homebrew";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, home-manager, nix-homebrew }:
  let
    #   $ darwin-rebuild switch --flake .
    mkDarwin = { host, username, system ? "aarch64-darwin", profiles ? [ ], identity ? "personal" }:
      nix-darwin.lib.darwinSystem {
        specialArgs = { inherit inputs username host system; };
        modules = [
          ./modules/darwin
          ./hosts/${host}/darwin.nix
          ./identities/${identity}/darwin.nix

          nix-homebrew.darwinModules.nix-homebrew

          home-manager.darwinModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              extraSpecialArgs = { inherit inputs username; };
              users.${username}.imports = [
                ./modules/home-manager/base
                ./identities/${identity}/home-manager.nix
                ./hosts/${host}/home-manager.nix
              ] ++ map (p: ./modules/home-manager/${p}) profiles;
              backupFileExtension = "bak";
            };
          }
        ];
      };

  in
  {
    formatter.aarch64-darwin = nixpkgs.legacyPackages.aarch64-darwin.nixfmt-tree;

    darwinConfigurations = {
      m4-pro = mkDarwin {
        host = "m4-pro";
        username = "bradleylam";
        profiles = [ "dev" "desktop" ];
        identity = "personal";
      };
      m2-air = mkDarwin {
        host = "m2-air";
        username = "bradleylam";
        profiles = [ "dev" "desktop" ];
        identity = "work";
      };
    };
  };
}
