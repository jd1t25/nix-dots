{ pkgs, ... }:
{
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
    gvfs
    udisks
    udiskie
    vim
    wl-clipboard
    wofi-emoji
    btop
    #brave
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
    direnv

    pulseaudio
    bat
    nil
    at

    (python312.withPackages (
      ps: with ps; [
        pandas
        requests
        pip
        flask
        debugpy
        isort
        beautifulsoup4
        black
        osmnx
        jupyter-core
        pyyaml
        nbformat
        nbclient
        ipykernel
        ebooklib
        # python-lsp-ruff
      ]
    ))
    quarto
    vimPlugins.friendly-snippets
    live-server
    neovim-remote

    nodejs
    yarn
    nodePackages.pnpm
    nodePackages.live-server

    mpvpaper
    yt-dlp
    obsidian
    yazi
    chromium
    nix-prefetch-github
    fira-code-nerdfont
    commit-mono
    go-mtpfs
    libgcc
    gcc
    linux-router
    haveged

    chafa
    thefuck
    eza
    nurl
    discord
    prettierd
    nixfmt-rfc-style

    vlc
    gifsicle
    black
    isort
    ruff
    vale
    nodePackages.jsonlint
    # ruff-lsp

    stow
    lazygit
    taskwarrior3

    nsxiv
    feh
  ];
}
