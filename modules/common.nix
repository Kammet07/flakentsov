{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;



  environment.systemPackages = with pkgs; [
    firefox
    vscode

    git
    vim
    wget
    fastfetch
    pciutils
    usbutils
    # dig
    tree
    tldr
    # rsync
    # jq
    # efibootmgr
    # e2fsprogs

  ];

}