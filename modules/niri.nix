{ self, inputs, ... }: {
  imports = [ inputs.niri.niosModules.niri ];
  
  programs.niri = {
    enable = true;

    settings = {
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
    };

  };

  
}
