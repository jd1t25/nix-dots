{ config, ... }:

{
	home.sessionVariables = {
		NIXOS_OZONE_WL = "1";
		WLR_NO_HARDWARE_CURSORS = "1";
		MOZ_ENABLE_WAYLAND = "1";
};
}
