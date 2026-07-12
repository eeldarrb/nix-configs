# Core system-level settings. `username` and `system` are injected via
# specialArgs from the flake's mkDarwin helper.
{ username, system, ... }:

{
  nix = {
    enable = false;
    settings.experimental-features = "nix-command flakes";
  };

  nixpkgs.hostPlatform = system;
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = 6;
  system.primaryUser = username;

  # Declare user for Home Manager
  users.users.${username} = {
    name = username;
    home = "/Users/${username}";
  };

  security.pam.services.sudo_local.touchIdAuth = true;
}
