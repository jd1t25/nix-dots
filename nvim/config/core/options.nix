{ pkgs, ... }:
{
  config = {
    performance = {
      byteCompileLua = {
        enable = true;
        nvimRuntime = true;
        configs = true;
        plugins = true;
      };
    };
    clipboard = {
      # Use system clipboard
      register = "unnamedplus";

      providers = {
        wl-copy = {
          enable = true;
          package = pkgs.wl-clipboard;
        };
      };
    };
    diagnostics = {
      virtual_text = false;
      signs = true;
      update_in_insert = true;
      severity_sort = true;
      underline = true;
      float = {
        border = "rounded";
      };
      jump = {
        severity.__raw = "vim.diagnostic.severity.WARN";
      };
    };
    opts = {
      breakindent = true; # Enable smart indenting
      # clipboard = "unnamedplus"; # Sets the register to use for the clipboard.

      # Enable relative line numbers
      number = true;
      relativenumber = true;

      # Set tabs to 2 spaces
      tabstop = 2;
      softtabstop = 2;
      showtabline = 2;
      expandtab = true;

      # Enable auto indenting and set it to spaces
      autoindent = true;
      smartindent = true;
      shiftwidth = 2;

      # Enable incremental searching
      hlsearch = true;
      incsearch = true;
      inccommand = "split";

      # Enable text wrap
      wrap = true;

      # Better splitting
      splitbelow = true;
      splitright = true;

      # Enable mouse mode
      mouse = "a"; # Mouse

      pumheight = 10; # pop up menu height

      # Enable ignorecase + smartcase for better searching
      ignorecase = true;
      smartcase = true; # Don't ignore case with capitals
      grepprg = "rg --vimgrep";
      grepformat = "%f:%l:%c:%m";

      # Decrease updatetime
      updatetime = 250; # faster completion (4000ms default)

      # Set completeopt to have a better completion experience
      completeopt = [
        "menuone"
        "noselect"
        "noinsert"
      ]; # mostly just for cmp

      # Enable persistent undo history
      swapfile = false;
      autoread = true;
      backup = false;
      undofile = true;

      # Enable 24-bit colors
      termguicolors = true;

      # Enable the sign column to prevent the screen from jumping
      signcolumn = "yes";

      # Enable cursor line highlight
      cursorline = true; # Highlight the line where the cursor is located

      # Set fold settings
      # These options were reccommended by nvim-ufo
      # See: https://github.com/kevinhwang91/nvim-ufo#minimal-configuration
      foldcolumn = "0";
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;

      # Always keep 8 lines above/below cursor unless at start/end of file
      scrolloff = 8;

      # Place a column line
      # colorcolumn = "80";

      # Reduce which-key timeout to 10ms
      timeout = true;
      timeoutlen = 300;

      # Set encoding type
      encoding = "utf-8";
      fileencoding = "utf-8";

      # More space in the neovim command line for displaying messages
      cmdheight = 2;

      # We don't need to see things like INSERT anymore
      showmode = true;

      list = true; # sets neovim display whitespace
      # listchars = {
      #   tab = "» ";
      #   trail = "·";
      #   nbsp = "␣";
      # };
    };
  };
}
