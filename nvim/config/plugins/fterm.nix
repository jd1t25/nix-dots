{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "FTerm.nvim";
      version = "13-11-2022";
      src = pkgs.fetchFromGitHub {
        owner = "numToStr";
        repo = "FTerm.nvim";
        rev = "d1320892cc2ebab472935242d9d992a2c9570180";
        hash = "sha256-fCtAs6qsvWOYRp2Z1AwQa2ByUZcUCMKfuYBoNTP7EeY=";
      };
    })
  ];

  extraConfigLua = ''
        require'FTerm'.setup({
        border = 'double',
        dimensions  = {
            height = 0.8,
            width = 0.8,
        },
    })

    -- local buf = vim.api.nvim_buf_get_name(0)  -- Get the full path of the current buffer/file
    -- local dir = vim.fn.fnamemodify(buf, ':p:h')
    -- local get_curr_dir = {
    --   "cd " .. dir,                 -- Change directory to the current file's directory
    --   "python3 " .. buf,            -- Run the current Python file
    -- }

  '';

  keymaps = [
    {
      mode = "n";
      key = "<C-t>";
      action = "<CMD>lua require('FTerm').toggle()<CR>";
      options = {
        desc = "Toggle FTerm";
      };
    }
    {
      mode = "t";
      key = "<C-t>";
      action = "<C-\\><C-n><CMD>lua require('FTerm').toggle()<CR>";
      options = {
        desc = "Toggle FTerm";
      };
    }
    # {
    #   mode = "n";
    #   key = "<leader>t";
    #   action = "<cmd>lua require('FTerm').run({'python3', vim.api.nvim_buf_get_name(0)})<cr>";
    #   options = {
    #     desc = "Run Python on Current File";
    #   };
    # }
    {
      mode = "n";
      key = "<leader>t";
      action = "<cmd>lua require ('FTerm').run({'python3', vim.api.nvim_buf_get_name(0)})<cr>";
      options = {
        desc = "Run Python on Current File";
      };
    }
  ];
}
