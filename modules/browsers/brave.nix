{ pkgs, ... }: {
  programs.chromium = {
    enable = true;
    package = pkgs.brave;
    extensions = [
      { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; } # ublock origin
      { id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; } # Dark Reader
      { id = "dbepggeogbaibhgnhhndojpepiihcmeb"; } # Vimium
    ];
    commandLineArgs = [
      "--ozone-platform-hint=auto"
    ];
  };
}
