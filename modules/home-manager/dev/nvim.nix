{ pkgs, config, ... }:

let
  link =
    path:
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/nix-configs/dotfiles/${path}";
in
{
  home.packages = with pkgs; [
    neovim
  ];

  xdg.configFile."nvim".source = link "nvim";
}
