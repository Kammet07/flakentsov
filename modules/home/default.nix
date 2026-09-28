{ pkgs, inputs, ... }: {
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager.users.kammet = {
    imports = [
      ./niri.nix
      ./noctalia.nix
      # TODO: ./fish.nix
      ./foot.nix
      ./common.nix
    ];

    home = {
      stateVersion = "26.05";
      username = "kammet";
      homeDirectory = "/home/kammet";

    };

  };


  # programs.home-manager.enable = true;


}


