{ lib, ... }:

{
  homebrew.onActivation.cleanup = lib.mkForce "none";
  homebrew.casks = [
    "claude"
    "slack"
    "1password"
  ];
}
