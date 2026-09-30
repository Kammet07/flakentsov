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

      mouse.accel-profile = "flat";

    };

    cursor.size = 12;

    outputs = {
      "eDP-1" = {
        mode = {
          width = 2560;
          height = 1600;
        };
        scale = 1.5;
        position = { 
          x = 0; 
          y = 0; 
        };
      };
      "ASUSTek COMPUTER INC ASUS VG34V N7LMTF092580" = {
        mode = {
          width = 3440;
          height = 1440;
        };

        scale = 1.0;
        position = { 
          x = 1707; 
          y = 0; 
        };
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

