{ pkgs, ... }:

{
  home.packages = with pkgs; [
    pi-coding-agent
  ];

  home.file."Library/Preferences/display-switch.ini".source =
    ../../dotfiles/display-switch/display-switch.ini;
}
