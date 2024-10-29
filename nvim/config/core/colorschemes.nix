{
  colorschemes.oxocarbon.enable = true;
  extraConfigLua = ''
    vim.api.nvim_set_hl(0, 'Normal', { bg = '#0d0d0d' })
  '';
  # extraConfigLua = "
  #   vim.api.nvim_set_hl(0, "Normal", { bg = "#161616" })
  # ";
}
