{ pkgs, ... }: {
  programs.niri.settings = {

#    spawn-at-startup = [
#      "noctalia"
#    ];

    input = {
      keyboard = {
        xkb.layout = "us";
        xkb.variant = "colemak";
      };

      touchpad = {
        tap = true;
        accel-speed = 0.0;
        accel-profile = "adaptive";
        natural-scroll = false;
      };
      
      focus-follows-mouse = {
        enable = true;
        max-scroll-amount = "0%";
      };
    };

    binds = {
      
      # terminal
      "Mod+Return" = {
        hotkey-overlay.title = "Open a Terminal: footclient";
        action.spawn = [
          "foot"
        ];
      };

      "Mod+Q" = {
        repeat = false;
        action.close-window = [ ];
      };

      "Ctrl+Alt+Delete" = {
        repeat = false;
        action.quit = [ ];
      };

      "Mod+S" = {
        action.spawn-sh = "noctalia msg panel-toggle launcher";
      };

      "Ctrl+Alt+A" = {
        action.spawn-sh = "code";
      };

    };
  };
}

