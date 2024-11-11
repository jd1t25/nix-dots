{
  plugins = {
    lsp-format = {
      enable = true;
    };
    lsp = {
      enable = true;
      servers = {
        nixd.enable = true;
        # basedpyright = {
        #   enable = true;
        #   extraOptions = {
        #     analysis = {
        #       typeCheckingMode = "off"; # Or "basic", "standard", "strict", "recommended", "all"
        #     };
        #   };
        # };
        bashls.enable = true;
        clangd.enable = true;
        nil_ls.enable = false;
        html.enable = true;
        ruff.enable = true;
        # pyright.enable = true;
        pyright = {
          enable = true;
          extraOptions = {
            analysis = {
              reportAttributeAccessIssue = "none";
            };
          };
        };
        # ruff_lsp.enable = true;
        # pylsp = {
        #   enable = true;
        #   settings.plugins = {
        #     # ruff.enable = true;
        #     black.enabled = true;
        #     flake8.enabled = true;
        #     isort.enabled = true;
        #     jedi.enabled = true;
        #     mccabe.enabled = true;
        #     pycodestyle.enabled = true;
        #     pydocstyle.enabled = true;
        #     pyflakes.enabled = true;
        #     pylint = {
        #       enabled = false;
        #     };
        #     rope.enabled = true;
        #     yapf.enabled = true;
        #   };
        # extraOptions = {
        #   plugins = {
        #     pycodestyle = {
        #       ignore = [ "W391" ];
        #       maxLineLength = 100;
        #     };
        #   };
        # };
        # };
      };
      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
          "<leader>rn" = {
            action = "rename";
            desc = "Code Rename";
          };
        };
        diagnostic = {
          "<leader>dd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
      };
    };
  };
  extraConfigLua = ''
     vim.diagnostic.config({
      underline = true,
      -- virtual_text = {
      --   prefix = "",
      --   severity = nil,
      --   source = "if_many",
      --   format = nil
      -- },
      signs = true,
      severity_sort = true,
      update_in_insert = false
    })

    local _border = "rounded"

    -- Configure hover handler with border
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = _border
      }
    )

    -- Configure signatureHelp handler with border
    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help, {
        border = _border
      }
    )

    -- Apply the same border setting to diagnostics popups
    vim.diagnostic.config({
      float = { border = _border }
    })

    -- Set default border for LSP windows
    require('lspconfig.ui.windows').default_options = {
      border = _border
    }
  '';
}
