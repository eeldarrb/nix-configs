{ ... }:

{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "$directory$git_branch$nix_shell$aws$jobs$line_break╰─$character";

      git_branch = {
        format = "[$symbol$branch]($style) ";
      };

      nix_shell = {
        format = "[$symbol]($style) ";
      };
    };
  };
}
