{ pkgs, ... }:

{
  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    gh
    curl
    uv
    ripgrep
    wget
    lazygit
    neovim
    tmux
    zoxide
    claude-code
    bat
    fd
    just
    # https://ghostty.org/docs/install/binary
    # There's a separate package for Ghossty on macOS.
    (if stdenv.isDarwin then ghostty-bin else ghostty)
  ];
}
