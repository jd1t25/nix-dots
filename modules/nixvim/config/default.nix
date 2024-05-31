{
  config,
  lib,
  ...
}: {
  imports = [
	./colorscheme

  ];
  config = {
    # The base16 theme to use, if you want to use another theme, change it in colorscheme.nix
    theme = "paradise";
    extraConfigLua = ''
      _G.theme = "${config.theme}"
    '';
  };
}
