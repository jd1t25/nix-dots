{pkgs, ...}: {
  home.packages = with pkgs; [
    pulsemixer
    kitty
    firefox
    wofi
    telegram-desktop
    playerctl
    grimblast
    chromium
    cliphist
    mpvpaper
    gnome.nautilus
    spotdl
    ytmdl
    yt-dlp
    ffmpeg_7
    mpv
    hyprpicker
    smplayer
    linux-wifi-hotspot
    linux-router-without-wifi
    nix-init
  ];
}
