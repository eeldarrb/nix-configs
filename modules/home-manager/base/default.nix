{ ... }:

{
  imports = [
    ./packages.nix
    ./git.nix
    ./zsh.nix
    ./tmux.nix
  ];

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
