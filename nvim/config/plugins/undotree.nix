{
  plugins.undotree = {
    enable =  true;
  };

  keymaps = [
     {
      mode = "n";
      key = "<leader>uu";
      action = "vim.cmd.UndotreeToggle";
      options = {
        silent = true;
        desc = "Undotree Toggle";
      };
    }
  ];

}
