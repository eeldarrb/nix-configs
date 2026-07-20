{ config, ... }:

let
  link =
    path:
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/nix-configs/dotfiles/${path}";
in
{
  home.file.".zshrc".source = link "zsh/.zshrc";
}
