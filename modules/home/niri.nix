{ pkgs, ... }: {
  programs.niri.settings = {

      # spawn-at-startup = [
      #   "noctalia"
      # ];

    input = {
      keyboard = {
        xkb.layout = "us";
        xkb.variant = "colemak";
      };

      touchpad = {
        tap = true;
        accel-speed = 0.0;
        accel-profile = "adaptive";
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
          "footclient"
          "--no-wait"
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

      "Mod+T" = {
        action.spawn-sh = "noctalia ipc call launcher toggle";
      };

      "Ctrl+Alt+A" = {
        action.spawn-sh = "code";
      };

    };
  };
}

