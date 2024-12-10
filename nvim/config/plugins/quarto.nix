{
  plugins.quarto.enable = true;
  keymaps = [
    {
      mode = [
        "n"
        "i"
      ];
      key = "<C-i>";
      action = ":lua insert_py_chunk()<cr>";
      options = {
        desc = "Python Code Chunk";
        silent = true;
        remap = true;
      };
    }
  ];
}
