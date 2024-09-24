_: {
  alias = {
    ll = "ls -al";
    "." = "cd ..";
    # rbld = "git add ~/nix-dots/.; sudo nixos-rebuild switch --flake ~/nix-dots/.#  --option eval-cache false";
    rbld = "nix-update";
    pmx = "pulsemixer";
    # rbld = "nix-update";
    v = "nvim";
    # v = "nix run 'github:elythh/nixvim'";
    sng = "sudo nix-collect-garbage -d";
    ng = "nix-collect-garbage  --delete-old";

    zrc = "nvim ~/nix-dots/modules/terminal/zsh/default.nix";

    ndc = "nvim ~/nix-dots";
    nxc = "nvim ~/nixvim";
    hrc = "nvim ~/.config/hypr/hyprland.conf";
  };
}
