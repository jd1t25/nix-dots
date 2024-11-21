_: {
  plugins.mini = {
    enable = true;
    modules = {
      colors.enable = true;
    };
  };

  imports = [
    ./clue.nix
    ./surround.nix
    ./files.nix
    ./move.nix
    ./indentscope.nix
    ./tabline.nix
    ./hightlighters.nix
    ./trailspace.nix
    ./base16.nix
  ];
}
