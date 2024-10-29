{
  plugins.gitsigns = {
    enable = true;
    settings = {
      current_line_blame = false;
      current_line_blame_opts = {
        virt_text = true;
        virt_text_pos = "eol";
      };
      signcolumn = true;
    };
  };
}
