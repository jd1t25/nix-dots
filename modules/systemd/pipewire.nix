{ config, ... }:
{
  systemd.services.pipewire = {
    environment = {
      PIPEWIRE_SPA_PLUGIN_PATH = "$HOME/nix-dots/sharedlib/:${config.environment.systemPackages}/lib/pipewire/spa/plugins";
    };
  };
}
