{ config, ... }:

{
	networking.networkmanager.enable = true;
	networking.hostName = "bcj115";
	networking.networkmanager.insertNameservers = [
		"1.1.1.1"
		"1.0.0.1"
		"8.8.8.8"
		"8.8.4.4"
	];
	
	# networking.wireless.enable = true; # Enables wireless support via wpa_supplicant.

	# networking.proxy.default = "http://user:password@proxy:port/";
	# networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

	networking.networkmanager.enable = true;
	# enable ephemeral port ranges by default
	networking.firewall.allowedUDPPortRanges = [
		{ from = 32768; to = 65535; }
	];
	networking.firewall.allowedTCPPortRanges = [
		{ from = 32768; to = 65535; }
	];
}
