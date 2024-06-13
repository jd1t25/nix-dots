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
    ffmpeg_7-full
    mpv
    hyprpicker
    smplayer
  ];
}
