{ ... }:

{
  programs.git = {
    enable = true;
    ignores = [
      ".DS_Store"
    ];
    settings = {
      pull.rebase = true;
      init.defaultBranch = "main";
      format.pretty = "oneline";
    };
  };
}
