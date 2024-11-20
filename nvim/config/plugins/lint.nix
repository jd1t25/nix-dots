{
  plugins.lint = {
    enable = true;
    lintersByFt = {
      python = [ "ruff" ];
      text = [ "vale" ];
      json = [ "jsonlint" ];
    };
  };
}
