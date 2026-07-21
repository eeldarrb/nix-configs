{ pkgs, ... }:

{
  home.packages = with pkgs; [
    lazygit
    gh
    uv
    just
    claude-code
    tealdeer
  ];
}
