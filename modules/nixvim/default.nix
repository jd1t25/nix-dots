{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

	./config
   # ./autocommands.nix
   # ./completion.nix
   # ./keymappings.nix
   # ./options.nix
   # ./plugins
   # ./todo.nix
  ];

  home.shellAliases.v = "nvim";

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;

    luaLoader.enable = true;
  };
}
