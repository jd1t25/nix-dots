{
  plugins.telescope = {
    enable = true;
    extensions.fzf-native.enable = true;
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
          desc = "[F]ind [H]elp";
        };
      };

      "<leader>fk" = {
        action = "keymaps";
        options = {
          desc = "[F]ind [K]eymaps";
        };
      };

      "<leader>ff" = {
        action = "find_files";
        options = {
          desc = "[F]ind [F]iles";
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
          desc = "[F]ind [C]urrent Word";
        };
      };

      "<leader>fg" = {
        action = "live_grep";
        options = {
          desc = "[F]ind by [G]rep";
        };
      };

      "<leader>fd" = {
        action = "diagnostics";
        options = {
          desc = "[F]ind [D]iagnostics";
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
          desc = "[ ] Find existing buffers";
        };
      };
    };
  };
}
