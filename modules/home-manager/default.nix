{ ... }:

{
  imports = [
    ./packages.nix
    ./git.nix
    ./dotfiles.nix
  ];

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
