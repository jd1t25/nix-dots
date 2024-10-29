{
  # config,
  # lib,
  ...
}: {
  imports = [
    ./plugins/sleuth.nix
    ./plugins/telescope.nix
    ./plugins/hop.nix
    ./plugins/treesitter.nix
    ./plugins/harpoon.nix
    ./plugins/undotree.nix
    ./plugins/lsp
    ./plugins/gitsigns.nix
    ./plugins/conform.nix
    ./plugins/fidget.nix

    ./core/options.nix
    ./core/autocmd.nix
    ./core/keymaps.nix
    ./core/colorschemes.nix
  ];

  # colorschemes.oxocarbon.enable = true;
  plugins.web-devicons.enable = true;
  
}

