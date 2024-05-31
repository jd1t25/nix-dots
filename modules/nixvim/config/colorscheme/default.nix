{config, ...}: 
{
	colorschemes = {
    base16 = {
      enable = true;
      setUpBar = false;
      colorscheme = import ../../colors/${config.theme}.nix {};
    };
    };
}
