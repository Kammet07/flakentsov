{
  programs.foot = {
    enable = true;
    server.enable = true;
  };

  # don't kill all of my terminals with nixos-rebuild
  systemd.user.services.foot.Unit.X-RestartIfChanged = "false";

  home.sessionVariables = {
    TERMINAL = "footclient";
    TERM = "foot";
  };
}