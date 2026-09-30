{ inputs, lib, self, config, ... }: {
  imports = lib.flatten [
    (with inputs.nixos-hardware.nixosModules; [
      common-cpu-amd
      common-cpu-amd-pstate
      common-gpu-nvidia
    ])
    
    ./hardware-configuration.nix
    
    ../../modules
  ];

  networking.hostName = "kammet-nixos-tuf";

  console.keyMap = "colemak";

  # fix copilot button
  services.keyd = {
    enable = true;
    keyboards.default = {
      ids = [ "*" ];
      settings.main = {
        "leftmeta+leftshift+f23" = "rightcontrol";
      };
    };
  };

  users.users.kammet = {
    isNormalUser = true;
    useDefaultShell = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "input"
      "docker"
      "disk"
    ];
  };

  system.stateVersion = "26.05";

}
