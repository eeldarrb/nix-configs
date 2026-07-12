# macOS system defaults (Dock, Finder, keyboard, screenshots, hotkeys).
{ ... }:

{
  system = {
    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToEscape = true;
    };

    defaults = {
      dock.autohide = true;

      trackpad.Clicking = true;

      finder = {
        AppleShowAllExtensions = true;
        # Finder list view
        FXPreferredViewStyle = "Nlsv";
      };

      screencapture.location = "~/Pictures/screenshots";

      # Screenshot shortcuts
      CustomUserPreferences."com.apple.symbolichotkeys" = {
        AppleSymbolicHotKeys = {
          # ⇧⌘4  -> copy selected area to the clipboard
          "31" = {
            enabled = 1;
            value = { type = "standard"; parameters = [ 52 21 1179648 ]; };
          };
          # ⌃⇧⌘4 -> save selected area to a file
          "30" = {
            enabled = 1;
            value = { type = "standard"; parameters = [ 52 21 1441792 ]; };
          };
        };
      };
    };
  };
}
