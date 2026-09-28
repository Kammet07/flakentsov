{ self, inputs, pkgs, ... }: {
  imports = [ 
    inputs.niri.nixosModules.niri
    # inputs.home-manager.nixosModules.home-manager
 ];
  
  programs.niri = {
    enable = true;

    package = pkgs.niri;  
  };



  
}
