{
  config = {

    autoCmd = [
      {
        # group = "highlight-yank";
        event = "TextYankPost";
        pattern = "*";
        desc = "Highlight when yanking (copying) text";
        command = "lua vim.highlight.on_yank{timeout=50}";
      }
      # {
      #   event = "FileType";
      #   pattern = "help";
      #   command = "wincmd F1";
      # }
    ];
    # extraConfigLua = ''
    #     vim.api.nvim_create_autocmd("VimLeave", {
    #     pattern = "*",
    #     callback = function()
    #         local harpoon = require("harpoon")
    #         harpoon:list():clear()
    #     end
    #   })
    # '';
  };
}
