{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;



  environment.systemPackages = with pkgs; [
    firefox
    discord
    vscode

    git
    vim
    wget
    fastfetch
    pciutils
    usbutils
    # dig
    tree
    # rsync
    # jq
    # efibootmgr
    # e2fsprogs

  ];

}