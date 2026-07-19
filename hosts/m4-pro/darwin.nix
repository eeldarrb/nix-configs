{ ... }:

{
  networking.hostName = "m4-pro";

  homebrew.taps = [
    "haimgel/tools"
  ];

  homebrew.brews = [
    {
      name = "haimgel/tools/display_switch";
      restart_service = true;
    }
  ];
}
