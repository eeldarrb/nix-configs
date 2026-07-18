{ pkgs, ... }:

{
  home.packages = with pkgs; [
    pi-coding-agent
  ];

  programs.git.settings.user = {
    name = "eeldarrb";
    email = "167944058+eeldarrb@users.noreply.github.com";
  };
}
