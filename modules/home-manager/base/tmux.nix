{ pkgs, config, ... }:

let
  link = path: config.lib.file.mkOutOfStoreSymlink
    "${config.home.homeDirectory}/repos/nix-configs/dotfiles/${path}";
in
{
  home.packages = with pkgs; [
    tmux
  ];

  xdg.configFile."tmux/tmux.conf".source = link "tmux/tmux.conf";
}
