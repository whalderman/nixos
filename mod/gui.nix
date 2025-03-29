{ config, ... }:

{
	# Enable the X11 windowing system.
	services.xserver.enable = true;

	# Enable the GNOME Desktop Environment.
	services.xserver.displayManager.gdm.enable = true;
	services.xserver.desktopManager.gnome.enable = true;
	services.gnome.sushi.enable = true;

	hardware.nvidia.open = false;
	services.xserver.videoDrivers = [ "nvidia" ];

	# Configure keymap in X11
	services.xserver.xkb = {
		layout = "jp";
		variant = "";
	};

	# Enable touchpad support (enabled default in most desktopManager).
	# services.xserver.libinput.enable = true;

	# Enable automatic login.
	services.displayManager.autoLogin = {
		enable = true;
		user = "warrenh";
	};
	# Workaround for GNOME autologin: https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
	systemd.services."getty@tty1".enable = false;
	systemd.services."autovt@tty1".enable = false;
}