{ username, ... }:

{
  nix-homebrew = {
    enable = true;
    enableRosetta = true;
    user = username;
    mutableTaps = true;
  };

  homebrew = {
    enable = true;

    # Uninstall unlisted apps
    onActivation.cleanup = "zap";
    onActivation.autoUpdate = false;
    onActivation.upgrade = false;

    taps = [
      {
        name = "jundot/omlx";
        clone_target = "https://github.com/jundot/omlx";
      }
    ];

    casks = [
      "alacritty"
      "rectangle"
      "maccy"
      "docker-desktop"
      "karabiner-elements"
    ];

    brews = [
      "postgresql@16"
    ];
  };
}
