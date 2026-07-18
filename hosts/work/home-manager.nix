{ pkgs, ... }:

{
  home.packages = with pkgs; [
    codex
    mongodb-compass
  ];
}
