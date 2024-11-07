{
  plugins.toggleterm = {
    enable = true;
    settings = {
      direction = "float";
      float_opts = {
        border = "curved";
        height = 30;
        width = 130;
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<C-t>";
      action = "<cmd>ToggleTerm dir=%:p:h<cr>";
      options = {
        silent = true;
        desc = "Terminal";
      };
    }
    {
      mode = "t";
      key = "<C-t>";
      action = "<C-\\><C-n>:ToggleTerm<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Terminal Exit";
      };
    }
    {
      mode = "n";
      key = "<leader>t";
      action = "<cmd>TermExec dir='%:p:h' cmd='python %:p'<cr>";
      options = {
        silent = true;
        noremap = true;
        desc = "Run Current Python File";
      };
    }
    {
      mode = "t";
      key = "<leader>t";
      action = "<C-\\><C-n>:ToggleTerm<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Terminal Exit";
      };
    }
  ];
}
