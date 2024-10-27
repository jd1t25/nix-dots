{ pkgs, ... }:

{
  # Other configuration settings...

  systemd.services.hotspot = {
    description = "Start Hotspot after window manager";
    after = ["graphical.target"];
    wants = ["graphical.target"];
    # path = ["/home/jd1t/.nix-profile/bin/lnxrouter"];
    serviceConfig = {
      ExecStart = "${pkgs.zsh}/bin/zsh /home/jd1t/nix-dots/bin/hotspot";
      Type = "simple";
    };
    wantedBy = ["default.target"];
  };
}

