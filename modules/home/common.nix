{ pkgs, ...}: {
  home.packages = with pkgs; [
      # development
      python3
      nodejs
      nix-init
      nh
      gh
      # TODO: allow unfree
      # vscode

      # gui apps
      # TODO: allow unfree
      # spotify
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