{ self, inputs, ... }: {
  flake.nixosModules.astufHardware = { config, lib, pkgs, modulesPath, ... }: {
    imports = [
      (modulesPath + "/installer/scan/not-detected.nix")
    ];

    boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "thunderbolt" "usb_storage" "sd_mod" "rtsx_pci_sdmmc" ];
    boot.initrd.kernelModules = [ ];
    boot.kernelModules = [ "kvm-amd" ];
    boot.extraModulePackages = [ ];

    fileSystems."/" = { 
      device = "/dev/disk/by-uuid/7684a7d9-577d-4e17-b690-67e86036c432";
      fsType = "ext4";
    };

    fileSystems."/boot" = { 
      device = "/dev/disk/by-uuid/39FC-AD0C";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };

    swapDevices = [ ];

    nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
    hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
   
    hardware.graphics.enable = true;
    services.xserver.videoDrivers = [ "nvidia" ];
    hardware.nvidia.open = true;

    hardware.nvidia.prime = {
      reverseSync.enable = true;

      amdgpuBusId = "PCI:66@0:0:0";
      nvidiaBusId = "PCI:64@0:0:0";
    };
  };
}
