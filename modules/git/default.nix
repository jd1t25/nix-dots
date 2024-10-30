{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    package = pkgs.gitFull;
    # userName = "jd1t25";
    # userEmail = "mayureshsaitwal25@gmail.com";
    # extraConfig = {
    #   credential.helper = "${
    #       pkgs.git.override { withLibsecret = true; }
    #     }/bin/git-credential-libsecret";
    # };
    config.credential.helper = "libsecret";
    aliases = {
      ga = "add";
      gci = "commit";
      gco = "checkout";
      gs = "status";
    };
  };

  # programs.git-credential-oauth = {
  # enable = true;
  # };
}
