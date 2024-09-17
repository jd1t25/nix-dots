{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    git
    curl
    vim
    wget
    ntfs3g
    tree
    zip
    xz
    unzip
    p7zip
    ripgrep
    eza
    fzf
    cowsay
    file
    which
    tree
    nix-output-monitor
    btop
    lm_sensors
    ethtool
    pciutils
    usbutils
    vim
    wl-clipboard
    wofi-emoji
    brave
    libnotify
    eww
    mako
    tofi
    nh
    nvd
    iw
    hostapd
    haveged
    jq

    zsh-fast-syntax-highlighting
    zsh-autosuggestions

    rustc
    cargo
    gnumake
    spotify

    pulseaudio
    bat
    nil

    (python312.withPackages (ps: with ps; [pandas requests pip flask]))
  ];
}
