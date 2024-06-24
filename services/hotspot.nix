{
  systemd.services.hotspot = {
    enable = true;
    description = "Hotspot Service";

    script = ''
      #!/bin/sh
      exec /home/jd1t/nix-dots/scripts/hotspot
    '';

    #requires = ["networking"];
    wantedBy = ["multi-user.target"];

    serviceConfig = {
      Type = "simple";
      User = "root";
      Group = "root";
    };

    restartIfChanged = true;
  };
}
