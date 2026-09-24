{ inputs, lib, self, config, ... }: {
  imports = lib.flatten [
    (with inputs.nixos-hardware.nixosModules; [
      common-cpu-amd
      common-cpu-amd-pstate
      
    ])
    
    ./hardware-configuration.nix
    
    ../../modules/niri
  ];

  
  user.name = "kammet";

  users.users.${config.user.name} = {
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
}
