{pkgs, ...}: {
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    mplus-outline-fonts.githubRelease
    (nerdfonts.override {fonts = ["FiraCode" "ComicShannsMono" "CommitMono"];})
    martian-mono
  ];
}
