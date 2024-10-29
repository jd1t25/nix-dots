{
  plugins.treesitter = {
    enable = true;
    settings = {
      auto_install = true;
      ensure_installed = ["c" "python" "javascript" "typescript" "c"];
      highlight.enable = true;
      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = "<c-space>";
          node_decremental = "<c-backspace>";
          node_incremental = "<c-space>";
          scope_incremental = "<c-s>";
        };
        indent = {
          enable = true;
        };
      };
    };
  };

  plugins.treesitter-textobjects = {
    enable = true;
    select = {
      enable = true;
      lookahead = true;
      keymaps = {
        "ap" = "@parameter.outer";
        "ip" = "@parameter.inner";
        "af" = "@function.outer";
        "if" = "@function.inner";
        "as" = "@class.outer";
        "is" = "@class.inner";
        "iv" = "@conditional.inner";
        "av" = "@conditional.outer";
        "il" = "@loop.inner";
        "al" = "@loop.outer";
        "ac" = "@comment.outer";
        "ic" = "@comment.inner";
      };
    };
    move = {
      enable = true;
      gotoNextStart = {
        "]f" = "@function.outer";
        "]s" = "@class.outer";
      };
      gotoNextEnd = {
        "]F" = "@function.outer";
        "]S" = "@class.outer";
      };
      gotoPreviousStart = {
        "[f" = "@function.outer";
        "[s" = "@class.outer";
      };
      gotoPreviousEnd = {
        "[F" = "@function.outer";
        "[S" = "@class.outer";
      };
    };
    swap = {
      enable = true;
      swapNext = {
        "<leader>tp" = "@parameters.inner";
      };
      swapPrevious = {
        "<leader>tP" = "@parameter.outer";
      };
    };
    lspInterop = {
      enable = true;
      border = "single";
      peekDefinitionCode = {
        "<leader>df" = {
          query = "@function.outer";
          desc = "Peek definition outer function";
        };
        "<leader>dF" = {
          query = "@class.outer";
          desc = "Peek definition outer class";
        };
      };
    };
  };
}
