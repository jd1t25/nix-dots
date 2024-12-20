{
  pkgs,
  inputs,
  ...
}:
{
  home.packages = with pkgs; [
    pulsemixer
    kitty
    firefox
    wofi
    telegram-desktop
    playerctl
    grimblast
    #chromium
    cliphist
    #mpvpaper
    nautilus
    spotdl
    ytmdl
    yt-dlp
    ffmpeg_7
    mpv
    hyprpicker
    smplayer
    nix-init
    nix-update
    inputs.nixvim.packages.${pkgs.system}.default
    floorp
    qbittorrent-enhanced
    eza
    teams-for-linux
    localsend
    live-server
    whatsapp-for-linux
    foliate
  ];
}
