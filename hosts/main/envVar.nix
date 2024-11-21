_: {
  environment.variables = {
    ZSH_THEME_GIT_PROMPT_PREFIX = "%{$fg_bold[blue]%}git:(%{$fg[red]%}";
    ZSH_THEME_GIT_PROMPT_SUFFIX = "%{$reset_color%} ";
    ZSH_THEME_GIT_PROMPT_DIRTY = "%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}";
    ZSH_THEME_GIT_PROMPT_CLEAN = "%{$fg[blue]%})";
    EDITOR = "nvim";
    NIXOS_CONFIG = "$HOME/nix-dots";
    XDG_SCREENSHOTS_DIR = "$HOME/Screenshots";
  };
}
