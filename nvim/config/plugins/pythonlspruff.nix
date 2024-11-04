{
  extraConfigLuaPost = ''
    require'lspconfig'.pylsp.setup {
      settings = {
        pylsp = {
          plugins = {
            ruff = {
              enabled = true,
            },
          },
        },
      },
    }
  '';
}
