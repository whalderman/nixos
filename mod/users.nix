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
}
