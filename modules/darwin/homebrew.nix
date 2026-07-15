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

    casks = [
      "alacritty"
      "rectangle"
      "maccy"
      "docker-desktop"
      "karabiner-elements"
      "google-chrome"
    ];

    brews = [
      "postgresql@16"
    ];
  };
}
