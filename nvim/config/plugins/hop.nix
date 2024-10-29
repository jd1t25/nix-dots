{
  plugins.hop = {
    enable = true;
  };
  keymaps = [
  {
    action = "<cmd>HopPattern<cr>";
    key = "<leader>hs";
    options = {
      silent = true;
      desc = "Hop Pattern";
      };
  }
  {
    action = "<cmd>HopLine<cr>";
    key = "<leader>hl";
    options = {
      silent = true;
      desc = "Hop Line";
      };
  }
  {
    action = "<cmd>HopWord<cr>";
    key = "<leader>hw";
    options = {
      silent = true;
      desc = "Hop Word";
      };
  }
  ];
}

