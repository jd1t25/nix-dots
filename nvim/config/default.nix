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

    ./core/options.nix
    ./core/autocmd.nix
    ./core/keymaps.nix
  ];

  colorschemes.oxocarbon.enable = true;
  plugins.web-devicons.enable = true;
  
}

