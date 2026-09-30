{ pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
      # development
      python3
      nodejs
      nix-init
      nh
      gh
      vscode

      # gui apps
      spotify
      vesktop
      pcmanfm
      ffmpegthumbnailer # video thumbnails
      gimp
      orca-slicer
      nsxiv
      # krita
      # epub to kepub
      kepubify
      vlc
      libreoffice
      chromium
      telegram-desktop

      # cli apps
      glow # render markdown on the cli
      nix-output-monitor
      exif
      yt-dlp
      croc

      # utils
      ffmpeg-full
      nix-diff
      p7zip
      file
  ];
}