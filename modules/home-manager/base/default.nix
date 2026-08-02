{ ... }:

{
  imports = [
    ./packages.nix
    ./git.nix
    ./zsh.nix
    ./nushell.nix
    ./zoxide.nix
    ./tmux.nix
    ./starship.nix
  ];

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
