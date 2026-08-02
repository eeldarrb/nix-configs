{ pkgs, ... }:

{
  home.packages = with pkgs; [
    curl
    wget
    ripgrep
    bat
    fd
    fzf
  ];
}
