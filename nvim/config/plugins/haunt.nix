{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "haunt.nvim";
      version = "v2.2.1";
      src = pkgs.fetchFromGitHub {
        owner = "adigitoleo";
        repo = "haunt.nvim";
        rev = "c1cdd77a4c4a1e320b02ff988b92543e7596fa62";
        hash = "sha256-7djuMyBPVd+ewlDmPmCst0coP15oAZ8hQgA1gy75D9A=";
      };
    })
  ];

  extraConfigLua = ''
    require('haunt').setup()
  '';

  keymaps = [
    {
      mode = "n";
      key = "<C-t>";
      action.__raw = ''
        function()
          local buf = vim.api.nvim_buf_get_name(0)  -- Get the full path of the current buffer/file
          local dir = vim.fn.fnamemodify(buf, ':p:h')  -- Get the directory of the file
          vim.api.nvim_command(':HauntTerm -t py')
          vim.api.nvim_command('startinsert')
          vim.api.nvim_feedkeys('cd ' .. dir .. '<CR>', 'n', true)
          vim.api.nvim_feedkeys('python3 ' .. buf .. '<CR>', 'n', true)
          -- vim.api.nvim_feedkeys('<C-\\><C-n>', 'n', true)
          -- vim.api.nvim_command(':HauntTerm -t py ')
          -- vim.api.nvim_command()
        end
      '';
      options = {
        desc = "Toggle Haunt Term";
      };
    }
    # {
    #   mode = "t";
    #   key = "<C-t>";
    #   action = "<C-\\><C-n><CMD>lua require('FTerm').toggle()<CR>";
    #   options = {
    #     desc = "Toggle FTerm";
    #   };
    # }
    # # {
    # #   mode = "n";
    # #   key = "<leader>t";
    # #   action = "<cmd>lua require('FTerm').run({'python3', vim.api.nvim_buf_get_name(0)})<cr>";
    # #   options = {
    # #     desc = "Run Python on Current File";
    # #   };
    # # }
    # {
    #   mode = "n";
    #   key = "<leader>t";
    #   action = "<cmd>lua require ('FTerm').run({'python3', vim.api.nvim_buf_get_name(0)})<cr>";
    #   options = {
    #     desc = "Run Python on Current File";
    #   };
    # }
  ];
}
