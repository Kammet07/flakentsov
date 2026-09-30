{ pkgs, ... }: {
  hardware = {
    bluetooth = {
      enable = true;
      powerOnBoot = false;
      # not sure why this one
      package = pkgs.bluez5-experimental;

      settings = {
        General = {
          ControllerMode = "dual";
          Experimental = true;
        };
      };
    };
  };
}