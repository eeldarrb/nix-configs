{
  pkgs,
  config,
  lib,
  ...
}:

{
  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    # https://ghostty.org/docs/install/binary
    # There's a separate package for Ghostty on macOS.
    (if pkgs.stdenv.isDarwin then ghostty-bin else ghostty)
  ];

  xdg.configFile = {
    "ghostty".source = ../../../dotfiles/ghostty;
  }
  // lib.optionalAttrs pkgs.stdenv.isDarwin {
    # symlink dir (Karabiner-Elements removes file-level symlink when modifying config)
    "karabiner".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/repos/nix-configs/dotfiles/karabiner";
  };
}
