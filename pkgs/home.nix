{
  pkgs,
  lib,
  ...
}: {
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
  ];
}
