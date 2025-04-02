{ config, pkgs, ... }:

{
	# Don't forget to set a password with ‘passwd’!
	users.users.warren = {
		isNormalUser = true;
		description = "Warren Halderman";
		extraGroups = [
			"networkmanager"
			"wheel" # for serial connections
			#"incus-admin"
		];
		packages = with pkgs; [];
	};
}
