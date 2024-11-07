{
  config = {
    # autoGroups = {
    #   highlight-yank = {
    #     clear = true; # Clear previous definitions
    #   };
    # };

    autoCmd = [
      {
        # group = "highlight-yank";
        event = "TextYankPost";
        pattern = "*";
        desc = "Highlight when yanking (copying) text";
        command = "lua vim.highlight.on_yank{timeout=50}";
      }
      {
        event = "FileType";
        pattern = "help";
        command = "wincmd F1";
      }
      # {
      #   event = "CursorHold";
      #   pattern = "*";
      #   desc = "Show Diagnostics";
      #   callback = {
      #     __raw = "function() if vim.lsp.buf.server_ready() then vim.diagnostic.open_float() end end";
      #   };
      # }
    ];
    extraConfigLua = ''
        vim.api.nvim_create_autocmd("VimLeave", {
        pattern = "*",
        callback = function()
            local harpoon = require("harpoon")
            harpoon:list():clear()
        end
      })
    '';
  };
}

#{
#    highlight-yank = {
#      clear = true;
#    };
#  
#  autoCmd = [{
#    group = "highlight-yank";
#    desc = "Highlight when yanking (copying) text";
#    callback = { 
#      __raw = "function()
#              vim.highlight.on_yank()
#              end";
#      };
#  };
#  ]
#}
