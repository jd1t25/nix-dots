alias ll="ls -al";
alias .="cd ..";
alias rbld="git add ~/nix-dots/.; sudo nix flake update; sudo nixos-rebuild switch --flake ~/nix-dots/.#  --option eval-cache false";
# rbld = "nix-update";
alias pmx="pulsemixer";
# rbld = "nix-update";
alias v="nvim";
# v = "nix run 'github:elythh/nixvim'";
alias sng="sudo nix-collect-garbage -d";
alias ng="nix-collect-garbage  --delete-old";
alias zrc="nvim ~/nix-dots/modules/terminal/zsh/default.nix";
alias ndc="nvim ~/nix-dots";
alias hrc="nvim ~/.config/hypr/hyprland.conf";
alias nd="nix develop path:$(pwd)";
alias nus="nixupdateswitch.sh";
alias alx="nvim ~/nix-dots/modules/terminal/zsh/alias.zsh"
alias spkgs="nvim ~/nix-dots/pkgs/system.nix"
alias hpkgs="nvim ~/nix-dots/pkgs/home.nix"
