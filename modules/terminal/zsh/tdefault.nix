{
  # home.sessionPath = [
  #   "$HOME/bin"
  # ];

  programs.zsh = {
    enable = true;
    # dotDir = "$HOME/.config/zsh";
    enableCompletion = true;
    histSize = 10000;
    histFile = "$HOME/.zsh_history";
    # history = {
    #   save = 10000;
    #   path = "$ZDOTDIR/.zsh_history";
    #   extended = true;
    # };
    syntaxHighlighting.enable = true;
    autosuggestions.enable = true;
    enableLsColors = true;
    setOptions = [
      "PROMPT_SUBST"
    ];
    # promptInit = ''
    #   kitty +kitten icat --place 10x10@0x0 --scale-up Downloads/1.gif
    #   PROMPT="
    #
    #
    #
    #
    #
    #   %(0:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜) %{$fg[cyan]%}%c%{$reset_color%} "
    #   '';
    # interactiveShellInit = ''
    #     setopt extendedglob hist_ignore_all_dups
    #     unsetopt autocd nomatch
    #     bindkey -v
    # '';
      # kitty +kitten icat --place 10x10@0x0 --scale-up Downloads/1.gif
      # printf "\n$ "
      # printf "\n$ "
      # PS1=\n\n\n
    ohMyZsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        "direnv"
      ];
    };
    shellInit = "
    source ${./alias.zsh}
    source ${./functions.zsh}
      ";
    # shellAliases = {
    #   ll = "ls -al";
    #   "." = "cd ..";
    #   rbld = "git add ~/nix-dots/.; sudo nix flake update; sudo nixos-rebuild switch --flake ~/nix-dots/.#  --option eval-cache false";
    #   # rbld = "nix-update";
    #   pmx = "pulsemixer";
    #   # rbld = "nix-update";
    #   v = "nvim";
    #   # v = "nix run 'github:elythh/nixvim'";
    #   sng = "sudo nix-collect-garbage -d";
    #   ng = "nix-collect-garbage  --delete-old";
    #
    #   zrc = "nvim ~/nix-dots/modules/terminal/zsh/default.nix";
    #
    #   ndc = "nvim ~/nix-dots";
    #   # nxc = "nvim ~/nixvim";
    #   hrc = "nvim ~/.config/hypr/hyprland.conf";
    #   nd = "nix develop path:$(pwd)";
    #   nus = "nixupdateswitch.sh";
    # };
    # zplug = {
    #   enable = true;
    #   plugins = [
    #     {name = "zsh-users/zsh-autosuggestions";} # Simple plugin installation
    #     # {
    #     #   name = "plugins/git";
    #     #   tags = [from:oh-my-zsh];
    #     # }
    #     # {
    #     #   name = "plugins/history";
    #     #   tags = [from:oh-my-zsh];
    #     # }
    #     # {
    #     #   name = "plugins/fuck";
    #     #   tags = [from:oh-my-zsh];
    #     # }
    #     # {
    #     #   name = "zsh-users/zsh-autosuggestions";
    #     # }
    #     # {
    #     #   name = "zdharma-continuum/fast-syntax-highlighting";
    #     # }
    #     # {
    #     #   name = "themes/robbyrussell";
    #     #   tags = [from:oh-my-zsh];
    #     # }
    #   ];
    # };
  };

  # programs.zoxide = {
  #     enable = true;
  #     enableZshIntegration = true;
  #   };
}
