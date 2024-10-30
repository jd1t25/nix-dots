{
  plugins.mini = {
    enable = true;
    # mockDevIcons = true;
    modules = {
      ai = {
        custom_textobjects = null;
        mappings = {
          around = "a";
          inside = "i";

          around_next = "an";
          inside_next = "in";
          around_last = "al";
          inside_last = "il";

          goto_left = "g[";
          goto_right = "g]";
        };
        n_lines = 50;

        search_method = "cover_or_next";

        silent = false;
      };
      clue = {
        triggers = [
          {
            mode = "n";
            keys = "<Leader>";
          }
          {
            mode = "x";
            keys = "<Leader>";
          }
          {
            mode = "i";
            keys = "<C-x>";
          }
          {
            mode = "n";
            keys = "g";
          }
          {
            mode = "x";
            keys = "g";
          }
          {
            mode = "n";
            keys = "'";
          }
          {
            mode = "n";
            keys = "`";
          }
          {
            mode = "x";
            keys = "'";
          }
          {
            mode = "x";
            keys = "`";
          }
          {
            mode = "n";
            keys = "\"";
          }
          {
            mode = "x";
            keys = "\"";
          }
          {
            mode = "i";
            keys = "<C-r>";
          }
          {
            mode = "c";
            keys = "<C-r>";
          }
          {
            mode = "n";
            keys = "<C-w>";
          }
          {
            mode = "n";
            keys = "z";
          }
          {
            mode = "x";
            keys = "z";
          }
        ];

        # clues = [
        #   miniclue.gen_clues.builtin_completion();
        #   miniclue.gen_clues.g();
        #   miniclue.gen_clues.marks();
        #   miniclue.gen_clues.registers();
        #   miniclue.gen_clues.windows();
        #   miniclue.gen_clues.z();
        # ];
      };

      surround = {
        mappings = {
          add = "sa";
          delete = "sd";
          find = "sf";
          find_left = "sF";
          highlight = "sh";
          replace = "sr";
          update_n_lines = "sn";
        };
      };
      trailspace = {
        only_in_normal_buffers = true;
      };
      tabline = {
        show_icons = true;
        set_vim_settings = true;
      };
      hipatterns = {
        highlighters = {
          fixme = {
            pattern = "%f[%w]()FIXME()%f[%W]";
            group = "MiniHipatternsFixme";
          };
          hack = {
            pattern = "%f[%w]()HACK()%f[%W]";
            group = "MiniHipatternsHack";
          };
          todo = {
            pattern = "%f[%w]()TODO()%f[%W]";
            group = "MiniHipatternsTodo";
          };
          note = {
            pattern = "%f[%w]()NOTE()%f[%W]";
            group = "MiniHipatternsNote";
          };
        };
      };
      files = {
        content = {
          filter = null;
          prefix = null;
          sort = null;
        };

        mappings = {
          close = "q";
          go_in = "l";
          go_in_plus = "L";
          go_out = "h";
          go_out_plus = "H";
          mark_goto = "'";
          mark_set = "m";
          reset = "<BS>";
          reveal_cwd = "@";
          show_help = "g?";
          synchronize = "=";
          trim_left = "<";
          trim_right = ">";
        };

        options = {
          permanent_delete = true;
          use_as_default_explorer = true;
        };

        windows = {
          max_number = 6; # Adjust as necessary for Nix
          preview = false;
          width_focus = 50;
          width_nofocus = 15;
          width_preview = 25;
        };
        keymaps = [
          {
            action = "<cmd>:lua MiniFiles.open()<cr>";
            key = "<leader>e";
            options = {
              silent = true;
              desc = "Nvim Tree (Mini Files) Open";
            };
          }
        ];
      };
      move = {
        mappings = {
          left = "<M-h>";
          right = "<M-l>";
          down = "<M-j>";
          up = "<M-k>";

          line_left = "<M-h>";
          line_right = "<M-l>";
          line_down = "<M-j>";
          line_up = "<M-k>";
        };

        options = {
          reindent_linewise = true;
        };
      };
      indentscope = {
        draw = {
          delay = 20;
          # animation = "<function>"; # Replace with the actual function reference as needed
          priority = 2;
        };
      };
      notify = {
        lsp_progress = {
          enable = false;
          duration_last = 1000;
        };
        window = {
          config = { };
          max_width_share = 0.382;
          winblend = 25;
        };
      };
      pairs = {
        modes = {
          insert = true;
          command = false;
          terminal = false;
        };
        mappings = {
          "(" = {
            action = "open";
            pair = "()";
            neigh_pattern = "[^\\].";
          };
          "[" = {
            action = "open";
            pair = "[]";
            neigh_pattern = "[^\\].";
          };
          "{" = {
            action = "open";
            pair = "{}";
            neigh_pattern = "[^\\].";
          };

          ")" = {
            action = "close";
            pair = "()";
            neigh_pattern = "[^\\].";
          };
          "]" = {
            action = "close";
            pair = "[]";
            neigh_pattern = "[^\\].";
          };
          "}" = {
            action = "close";
            pair = "{}";
            neigh_pattern = "[^\\].";
          };

          "\"" = {
            action = "closeopen";
            pair = "\"\"";
            neigh_pattern = "[^\\].";
            register = {
              cr = false;
            };
          };
          "'" = {
            action = "closeopen";
            pair = "''";
            neigh_pattern = "[^%a\\].";
            register = {
              cr = false;
            };
          };
          "`" = {
            action = "closeopen";
            pair = "``";
            neigh_pattern = "[^\\].";
            register = {
              cr = false;
            };
          };
        };
      };
    };
  };
}
