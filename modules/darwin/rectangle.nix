{ ... }:

{
  homebrew.casks = [
    "rectangle"
  ];

  system.defaults.CustomUserPreferences."com.knollsoft.Rectangle" = {
    SUEnableAutomaticChecks = 0;

    allowAnyShortcut = 1;
    alternateDefaultShortcuts = 1;
    subsequentExecutionMode = 1;

    # modifierFlags 786432 = ctrl+opt
    # h, j, k, l
    leftHalf = {
      keyCode = 4;
      modifierFlags = 786432;
    };
    centerHalf = {
      keyCode = 38;
      modifierFlags = 786432;
    };
    maximize = {
      keyCode = 40;
      modifierFlags = 786432;
    };
    rightHalf = {
      keyCode = 37;
      modifierFlags = 786432;
    };

    toggleTodo = { };
    reflowTodo = { };
    bottomHalf = { };
    bottomLeft = { };
    bottomRight = { };
    center = { };
    larger = { };
    maximizeHeight = { };
    nextDisplay = { };
    previousDisplay = { };
    restore = { };
    smaller = { };
    topHalf = { };
    topLeft = { };
    topRight = { };
  };
}
