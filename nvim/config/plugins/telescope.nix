{
  plugins.telescope = {
    enable = true;
    extensions.fzy-native.enable = true;
    # enabledExtensions = [
    #   "fzf-native"
    # ];
    highlightTheme = "oxocarbon";
    settings = {
      defaults = {
        mappings = {
          i = {
            "<C-j>" = {
              __raw = "require('telescope.actions').move_selection_next";
            };
            "<C-k>" = {
              __raw = "require('telescope.actions').move_selection_previous";
            };
            "JK" = "close";
          };
          n = {
            "JK" = "close";
          };
        };
        selection_caret = "> ";
        set_env = {
          COLORTERM = "truecolor";
        };
      };
    };
    keymaps = {
      "<leader>fh" = {
        action = "help_tags";
        options = {
          desc = "Telscope [F]ind [H]elp Tags";
        };
      };

      "<leader>fk" = {
        action = "keymaps";
        options = {
          desc = "Telescope [F]ind [K]eymaps";
        };
      };

      "<leader>ff" = {
        action = "find_files";
        options = {
          desc = "Telescope [F]ind [F]iles";
        };
      };

      # "<leader>fs" = {
      #   action = "builtin";
      #   options = {
      #     desc = "[F]ind [S]elect Telescope";
      #   };
      # };

      "<leader>fc" = {
        action = "grep_string";
        options = {
          desc = "Telescope [F]ind [C]urrent Word";
        };
      };

      "<leader>fg" = {
        action = "live_grep";
        options = {
          desc = "Telescope [F]ind by [G]rep";
        };
      };

      "<leader>fd" = {
        action = "diagnostics";
        options = {
          desc = "Telescope [F]ind [D]iagnostics";
        };
      };

      # "<leader>fr" = {
      #   action = "resume";
      #   options = {
      #     desc = "[F]ind [R]esume";
      #   };
      # };

      # "<leader>f." = {
      #   action = "oldfiles";
      #   options = {
      #     desc = "[F]ind Recent Files (\".\" for repeat)";
      #   };
      # };

      "<leader><leader>" = {
        action = "buffers";
        options = {
          desc = "Telescope [ ] Find existing buffers";
        };
      };
    };
  };
  extraConfigLua = ''
        vim.api.nvim_exec([[
      function! CustomTelescopeHighlights() abort
        " Fetching colors from core Neovim highlight groups
        let fg = synIDattr(hlID('Normal'), 'fg')
        let bg0 = synIDattr(hlID('Normal'), 'bg')
        let bg1 = synIDattr(hlID('NormalFloat'), 'bg')
        let orange = synIDattr(hlID('WarningMsg'), 'fg')
        let purple = synIDattr(hlID('Statement'), 'fg')
        let green = synIDattr(hlID('String'), 'fg')
        let red = synIDattr(hlID('ErrorMsg'), 'fg')

        " Setting custom highlights for Telescope
        call nvim_set_hl(0, 'TelescopeMatching', {'fg': orange})
        call nvim_set_hl(0, 'TelescopeSelection', {'fg': fg, 'bg': bg1, 'bold': v:true})
        call nvim_set_hl(0, 'TelescopePromptPrefix', {'bg': bg1})
        call nvim_set_hl(0, 'TelescopePromptNormal', {'bg': bg1})
        call nvim_set_hl(0, 'TelescopeResultsNormal', {'bg': bg0})
        call nvim_set_hl(0, 'TelescopePreviewNormal', {'bg': bg0})
        call nvim_set_hl(0, 'TelescopePromptBorder', {'bg': bg1, 'fg': bg1})
        call nvim_set_hl(0, 'TelescopeResultsBorder', {'bg': bg0, 'fg': bg0})
        call nvim_set_hl(0, 'TelescopePreviewBorder', {'bg': bg0, 'fg': bg0})
        call nvim_set_hl(0, 'TelescopePromptTitle', {'bg': purple, 'fg': bg0})
        call nvim_set_hl(0, 'TelescopeResultsTitle', {'fg': bg0})
        call nvim_set_hl(0, 'TelescopePreviewTitle', {'bg': green, 'fg': bg0})
        call nvim_set_hl(0, 'CmpItemKindField', {'bg': red, 'fg': bg0})

        " Make cmp menu transparent
        call nvim_set_hl(0, 'PMenu', {'bg': 'NONE'})
      endfunction

      " Call the function to apply the custom highlights
      call CustomTelescopeHighlights()
    ]], false)
  '';
}
