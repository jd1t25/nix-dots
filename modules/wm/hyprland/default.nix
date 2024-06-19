{
  pkgs,
  config,
  ...
}: {
  services = {
    displayManager.sddm = {
      enable = true;
      autoNumlock = true;
    };
    xserver.videoDrivers = ["nvidia"];
    pipewire = {
      enable = true;
      audio.enable = true;
      pulse.enable = true;
      alsa = {
        enable = true;
        support32Bit = true;
      };
      jack.enable = true;
    };
  };

  programs.hyprland = {
    # we use this instead of putting it in systemPackages/users
    enable = true;
    xwayland.enable = true;
    #xdg.configFile.hypr = { source = ../../../configs/ }
  };

  hardware.nvidia = {
    # Enable modesetting for Wayland compositors (hyprland)
    modesetting.enable = true;
    # Use the open source version of the kernel module (for driver 515.43.04+)
    open = true;
    # Enable the Nvidia settings menu
    nvidiaSettings = true;
    # Select the appropriate driver version for your specific GPU
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  nixpkgs.config.allowUnfree = true;
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-gtk];
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  sound.enable = true;

  nixpkgs = {
    overlays = [
      (self: super: {
        waybar = super.waybar.overrideAttrs (oldAttrs: {
          mesonFlags = oldAttrs.mesonFlags ++ ["-Dexperimental=true" "-Dmpd=enabled"];
        });
      })
    ];
  };
}
