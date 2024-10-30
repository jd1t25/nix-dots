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
    ];
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
