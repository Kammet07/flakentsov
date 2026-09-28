{ lib, ... }: {
  imports = lib.flatten [

    ./niri.nix
    ./networking.nix
    ./systemd-boot.nix
    ./common.nix

    ./home
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

}

