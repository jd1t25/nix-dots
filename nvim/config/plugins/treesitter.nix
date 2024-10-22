{
  plugins.treesitter = {
      enable = true;
      settings = {
        auto_install = true;
        ensure_installed = ["c" "python" "javascript" "typescript" "c"];
        highlight.enable = true;
        incremental_selection = {
          enable = true;
          keymaps = {
            init_selection = false;
            node_decremental = "grn";
            node_incremental = "grm";
            scope_incremental = "grc";
          };
          indent = {
            enable = true;
          };
        };
      };
  };
}
