{ config, pkgs, ... }:

{
	# Don't forget to set a password with ‘passwd’!
	users.users.warrenh = {
		isNormalUser = true;
		description = "Warren Halderman";
		extraGroups = [
			"networkmanager"
			"wheel"
			"dialout" # serial port access
		];
		packages = with pkgs; [
		#	thunderbird
		];
	};

	# Enable automatic login
	services.displayManager.autoLogin.enable = true;
	services.displayManager.autoLogin.user = "warrenh";
	# Workaround for GNOME autologin: https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
	systemd.services."getty@tty1".enable = false;
	systemd.services."autovt@tty1".enable = false;
}
