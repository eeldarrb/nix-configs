{ ... }:

{
  programs.zoxide = {
    enable = true;
    options = [ "--cmd" "cd" ];
    enableZshIntegration = false;
  };
}
