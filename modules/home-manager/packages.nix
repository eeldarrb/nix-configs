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
    pi-coding-agent
    claude-code
  ];
}
