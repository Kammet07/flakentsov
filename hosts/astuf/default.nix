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
