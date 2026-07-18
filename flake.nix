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
    mkDarwin = { host, username, system ? "aarch64-darwin" }:
      nix-darwin.lib.darwinSystem {
        specialArgs = { inherit inputs username host system; };
        modules = [
          ./modules/darwin
          ./hosts/${host}/darwin.nix

          nix-homebrew.darwinModules.nix-homebrew

          home-manager.darwinModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              extraSpecialArgs = { inherit inputs username; };
              users.${username}.imports = [
                ./modules/home-manager
                ./hosts/${host}/home-manager.nix
              ];
              backupFileExtension = "bak";
            };
          }
        ];
      };

  in
  {
    darwinConfigurations = {
      home = mkDarwin {
        host = "home";
        username = "bradleylam";
      };
      work = mkDarwin {
        host = "work";
        username = "bradleylam";
      };
    };
  };
}
