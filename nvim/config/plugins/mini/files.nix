{
  plugins.mini.modules.files = {
    content = {
      filter = null;
      prefix = null;
      sort = null;
    };

    mappings = {
      close = "q";
      go_in = "l";
      go_in_plus = "L";
      go_out = "h";
      go_out_plus = "H";
      mark_goto = "'";
      mark_set = "m";
      reset = "K";
      reveal_cwd = "@";
      show_help = "g?";
      synchronize = "J";
      trim_left = "<";
      trim_right = ">";
    };

    options = {
      permanent_delete = true;
      use_as_default_explorer = true;
    };

    windows = {
      max_number = 6; # Adjust as necessary for Nix
      preview = false;
      width_focus = 50;
      width_nofocus = 15;
      width_preview = 25;
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      # action = ":lua HoptBefore()<CR>";
      action = "<cmd>:lua MiniFiles.open()<cr>";
      options = {
        desc = "Mini Files NvimTree";
        # silent = true;
        remap = true;
      };
    }
  ];
}
