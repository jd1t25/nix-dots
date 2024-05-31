{ pkgs, lib, inputs, ...}: 

{
programs.git = {
    enable = true;
    userName  = "jd1t25";
    userEmail = "mayureshsaitwal25@gmail.com";
    aliases = {
      ga = "add";
      gci = "commit";
      gco = "checkout";
      gs = "status";
    };
  };
}
