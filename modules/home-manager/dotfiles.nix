{ config, lib, pkgs, ... }:

let
  dotfiles = "${config.home.homeDirectory}/repos/nix-configs/dotfiles";
  link = path: config.lib.file.mkOutOfStoreSymlink "${dotfiles}/${path}";
in
{
  home.file = {
    ".zshrc".source = link "zsh/.zshrc";
  };

  xdg.configFile = {
    "nvim".source = link "nvim";
    "alacritty".source = link "alacritty";
    "ghostty".source = ../../dotfiles/ghostty;
    "tmux/tmux.conf".source = link "tmux/tmux.conf";
  } // lib.optionalAttrs pkgs.stdenv.isDarwin {
    # symlink dir (Karabiner-Elements removes file-level symlink when modifying config)
    "karabiner".source = link "karabiner";
  };
}
