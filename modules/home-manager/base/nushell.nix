{ ... }:

{
  programs.nushell = {
    enable = true;
    extraConfig = builtins.readFile ../../../dotfiles/nushell/config.nu;
  };
}
