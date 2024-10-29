{ pkgs, ... }:

{
  # Other configuration settings...

  systemd.services.hotspot = {
    description = "Start Hotspot after window manager";
    after = ["network.target"];
    # path = ["/home/jd1t/.nix-profile/bin/lnxrouter"];
    serviceConfig = {
      User = "root";
      Group = "root";
      ExecStart = "${pkgs.linux-router}/bin/lnxrouter --ap wlo1 \"Go Go Router Rangers\" -p \"Qwerty?123\" ";
      Type = "simple";
    };
    path = [ pkgs.util-linux ];
    wantedBy = ["multi-user.target"];
  };
}

