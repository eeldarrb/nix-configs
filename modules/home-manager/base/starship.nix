{ ... }:

{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "╭─ $directory$git_branch$nix_shell$line_break╰─$character";

      nix_shell = {
        format = "[$symbol]($style)";
      };
    };
  };
}
