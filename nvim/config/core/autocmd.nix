{
  config = {
    autoGroups = {
      highlight-yank = {
        clear = true; # Clear previous definitions
      };
    };

    autoCmd = [
    {
    group = "highlight-yank";
    event = ["BufEnter" "BufWinEnter"];
    pattern = "*";
    desc = "Highlight when yanking (copying) text";
    callback = { 
      __raw = "function()
              vim.highlight.on_yank()
              end";
      };
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
