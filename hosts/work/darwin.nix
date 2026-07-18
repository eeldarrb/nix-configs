{ lib, ... }:

{
  networking.hostName = "work";

  homebrew = {
    onActivation.cleanup = lib.mkForce "none";
    casks = [
      "claude"
      "slack"
      "1password"
    ];
  };
}
