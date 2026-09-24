{
  inputs,
  lib,
  self,
  ...
}:
let
  specialArgs = {
    inherit inputs self;
  };
in
{
  flake.nixosConfigurations = {
    astuf = lib.nixosSystem {
      inherit specialArgs;
      modules = [ ./astuf ];
    };
  };
}
