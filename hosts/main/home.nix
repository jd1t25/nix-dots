{ pkgs, lib, ... }:
{
  imports = [
    ../../modules/home.nix
    ./envSession.nix
    ../../pkgs/home.nix
  ];

  #Numlock
  xsession.numlock.enable = true;

  home = {
    username = "jd1t";
    homeDirectory = "/home/jd1t";
    sessionPath = [
      "$HOME/.local/bin"
      "$HOME/bin"
    ];

    file =
      let
        sourceDir = ../../configs;
      in
      # Loop through all subdirectories and create symlinks
      builtins.listToAttrs (
        map (dirName: {
          name = ".config/${dirName}";
          value = {
            source = "${sourceDir}/${dirName}";
          };
        }) (builtins.attrNames (builtins.readDir sourceDir))
      );

    activation = {
      symlinkbin = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
        if [[ ! -d "$HOME/bin" ]]; then
          ln -s ${toString ./../../bin} $HOME
        fi
      '';
    };

    # ln -s ./. + "/../../bin" $HOME
    # ".config" = {
    #   source = config.lib.file.mkOutOfStoreSymlink ../../configs;
    # };
    ### DotFiles
    # file."configs" = {
    #   target = "$HOME/.config";
    #   source = ../../configs;
    #   recursive = true;
    # };
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-wlr
      xdg-desktop-portal-hyprland
    ];
    configPackages = [ pkgs.xdg-desktop-portal-gtk ];
  };

  # home.username = "jd1t";
  # home.homeDirectory = "/home/jd1t";

  # link the configuration file in current directory to the specified location in home directory
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # link all files in `./scripts` to `~/.config/i3/scripts`
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # link recursively
  #   executable = true;  # make all files executable
  # };

  # encode the file content in nix configuration file directly
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  # set cursor size and dpi for 4k monitor
  #  xresources.properties = {
  #    "Xcursor.size" = 16;
  #    "Xft.dpi" = 172;
  #  };

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
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
    pciutils # lspci
    usbutils # lsusb
  ];

  # home-manager.backupFileExtension = "backup";

  # home.file."configs" = {
  #   target = "$HOME/.config";
  #   source = ../../configs;
  #   recursive = true;
  # };

  # basic configuration of git, please change to your own
  #  programs.git = {
  #    enable = true;
  #    userName = "Ryan Yin";
  #    userEmail = "xiaoyin_c@qq.com";
  #  };

  # starship - an customizable prompt for any shell
  # programs.starship = {
  #   enable = true;
  #   # custom settings
  #   settings = {
  #     add_newline = false;
  #     aws.disabled = true;
  #     gcloud.disabled = true;
  #     line_break.disabled = true;
  #   };
  # };

  # alacritty - a cross-platform, GPU-accelerated terminal emulator
  # programs.alacritty = {
  #   enable = true;
  #   # custom settings
  #   settings = {
  #     env.TERM = "xterm-256color";
  #     font = {
  #       size = 12;
  #       draw_bold_text_with_bright_colors = true;
  #     };
  #     scrolling.multiplier = 5;
  #     selection.save_to_clipboard = true;
  #   };
  # };

  #  programs.zsh = {
  #	enable = true;
  #	dotDir = ".config/zsh";
  #	enableCompletion = true;
  #	history.save = 10000;
  #	history.path = "$ZDOTDIR/.zsh_history";
  #	history.extended = true;
  #	syntaxHighlighting.enable = true;
  #	shellAliases = {
  #
  #  };
  #};

  #  programs.bash = {
  #    enable = true;
  #    enableCompletion = true;
  #    # TODO add your custom bashrc here
  #    bashrcExtra = ''
  #      export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
  #    '';

  # set some aliases, feel free to add more or remove some
  #    shellAliases = {
  #      k = "kubectl";
  #      urldecode = "python3 -c 'import sys, urllib.parse as ul; print(ul.unquote_plus(sys.stdin.read()))'";
  #      urlencode = "python3 -c 'import sys, urllib.parse as ul; print(ul.quote_plus(sys.stdin.read()))'";
  #    };
  #  };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
