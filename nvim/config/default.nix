_: {
  imports = [
    ./core/autocmd.nix
    ./core/keymaps.nix
    ./core/options.nix

    ./plugins/treesitter.nix
    ./plugins/indentomatic.nix
    ./plugins/nvimtsautotag.nix
    ./plugins/lint.nix
    ./plugins/lsp
    ./plugins/mini
    ./plugins/telescope.nix
    ./plugins/gitsigns.nix
    ./plugins/undotree.nix
    ./plugins/nix.nix
    ./plugins/hop.nix
    ./plugins/fidget.nix
    ./plugins/ufo.nix
    ./plugins/debugger.nix
    ./plugins/nonels.nix
    ./plugins/rainbowbrackets.nix
    ./plugins/transparent.nix
    ./plugins/sniprun.nix
    ./plugins/comment.nix
    ./plugins/quarto.nix
  ];

  plugins.web-devicons.enable = true;
}
