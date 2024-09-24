{
  home.sessionPath = [
    "$HOME/bin"
  ];

  programs.zsh = {
    enable = true;
    dotDir = "$HOME/.config/zsh";
    enableCompletion = true;
    history = {
      save = 10000;
      path = "$ZDOTDIR/.zsh_history";
      extended = true;
    };
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    shellAliases = {
      ll = "ls -al";
      "." = "cd ..";
      rbld = "git add ~/nix-dots/.; sudo nix flake update; sudo nixos-rebuild switch --flake ~/nix-dots/.#  --option eval-cache false";
      # rbld = "nix-update";
      pmx = "pulsemixer";
      # rbld = "nix-update";
      v = "nvim";
      # v = "nix run 'github:elythh/nixvim'";
      sng = "sudo nix-collect-garbage -d";
      ng = "nix-collect-garbage  --delete-old";

      zrc = "nvim ~/nix-dots/modules/terminal/zsh/default.nix";

      ndc = "nvim ~/nix-dots";
      # nxc = "nvim ~/nixvim";
      hrc = "nvim ~/.config/hypr/hyprland.conf";
    };
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
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        # "git"
      ];
    };
  };
}
