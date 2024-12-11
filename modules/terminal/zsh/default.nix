{ pkgs, ... }:
{
  # home.sessionPath = [
  #   "$HOME/bin"
  # ];

  programs.zsh = {
    enable = true;
    autocd = true;
    dotDir = ".config/zsh";
    enableCompletion = true;
    autosuggestion.enable = true;
    # histSize = 10000;
    # histFile = "$HOME/.zsh_history";
    history = {
      save = 10000;
      path = "$ZDOTDIR/.zsh_history";
      extended = true;
      expireDuplicatesFirst = true;
    };
    # syntaxHighlighting.enable = true;
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
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        "direnv"
      ];
    };
    plugins = with pkgs; [
      {
        name = "fast-syntax-highlighting ";
        src = fetchFromGitHub {
          owner = "zdharma-continuum";
          repo = "fast-syntax-highlighting";
          rev = "cf318e06a9b7c9f2219d78f41b46fa6e06011fd9";
          hash = "sha256-RVX9ZSzjBW3LpFs2W86lKI6vtcvDWP6EPxzeTcRZua4=";
        };
        file = "fast-syntax-highlighting.plugin.zsh";
      }
      {
        name = "zsh-autopair";
        src = fetchFromGitHub {
          owner = "hlissner";
          repo = "zsh-autopair";
          rev = "449a7c3d095bc8f3d78cf37b9549f8bb4c383f3d";
          hash = "sha256-3zvOgIi+q7+sTXrT+r/4v98qjeiEL4Wh64rxBYnwJvQ=";
        };
        file = "autopair.zsh";
      }
    ];
    initExtra = ''
      source ${./alias.zsh}
      source ${./functions.zsh}
      eval $(thefuck --alias)
      kitty +kitten icat --align right -n $(shuf -n 1 /mnt/win1/Myself/Pokemon/pokemon_gifs.txt)
    '';
    # kitty +kitten icat --align right -n $(find /mnt/win1/Myself/Pokemon/gifs -type f | shuf -n 1)
    # NEWLINE=$'\n'
    # if [[ -z "$FIRST_PROMPT" ]]; then
    #     PROMPT="
    #
    #
    #
    #
    #
    # %(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} ) %{$fg[cyan]%}%c%{$reset_color%}"
    #     PROMPT+=' $(git_prompt_info)'
    #
    #     export FIRST_PROMPT=1
    # else
    #     PROMPT="%(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} ) %{$fg[cyan]%}%c%{$reset_color%}"
    #     PROMPT+=' $(git_prompt_info)'
    # fi

    #   if [[ ! -d $ZDOTDIR/.zsh-autopair ]]; then
    #     git clone https://github.com/hlissner/zsh-autopair $ZDOTDIR/.zsh-autopair
    #   fi
    #   if [[ ! -d $ZDOTDIR/fast-syntax-highlighting ]]; then
    #     git clone https://github.com/zdharma-continuum/fast-syntax-highlighting $ZDOTDIR/fsh
    #   fi
    #
    #   source $ZDOTDIR/.zsh-autopair/autopair.zsh
    #
    #   source $ZDOTDIR/fsh/fast-syntax-highlighting.plugin.zsh
    #   autopair-init
    # '';
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  # programs.fzf = {
  #   enable = true;
  #   enableZshIntegration = true;
  # };

  # Prevent the new user dialog in zsh
  # system.userActivationScripts.zshrc = "touch .zshrc";
}
