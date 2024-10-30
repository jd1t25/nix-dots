{
  options.extraConfigLuaPre = ''
    -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- optionally enable 24-bit colour
    vim.opt.termguicolors = true
  '';

  plugins.nvim-tree = {
    enable = true;
  };
  keymaps = [
    {
      action = "<cmd>NvimTreeToggle<cr>";
      key = "<leader>e";
      options = {
        silent = true;
        desc = "Nvim Tree Toggle";
      };
    }
  ];
}
