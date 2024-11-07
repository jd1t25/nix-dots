{
  plugins.sniprun = {
    enable = true;
    settings = {
      display = [
        "Terminal"
      ];
    };
  };

  keymaps = [
    {
      mode = "v";
      key = "<leader>r";
      action = "<cmd>lua require'sniprun'.run('v')<cr>";
      options = {
        silent = true;
        desc = "SnipRun Snippet Run";
      };
    }
    {
      mode = "v";
      key = "<leader>r";
      action = "<cmd>SnipClose<cr>";
      options = {
        silent = true;
        desc = "SnipRun Snippet Run Close";
      };
    }
  ];
}
