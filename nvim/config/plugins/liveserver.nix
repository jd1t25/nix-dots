{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "live-server.nvim";
      version = "2024-07-22";
      src = pkgs.fetchFromGitHub {
        owner = "barrett-ruth";
        repo = "live-server.nvim";
        rev = "5fc8abb727827a09d0ce1b7757d0a4c7b5802b09";
        hash = "sha256-gZDG9PuzRpRJGPkkXiiBZ5w+ZUglMJA08o/ij54ME8o=";
      };
    })
  ];

  extraConfigLua = ''
    require('live-server').setup()
  '';
  keymaps =
    [
    ];
}
