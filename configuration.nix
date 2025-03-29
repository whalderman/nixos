{ config, pkgs, ... }:

{
	imports = [
		# Include the results of the hardware scan.
		./hardware-configuration.nix
		./mod/audio.nix
		./mod/filesystems.nix
		./mod/fonts.nix
		./mod/gui.nix
		./mod/i18n.nix
		./mod/network.nix
		./mod/programs.nix
		./mod/system-packages.nix
		./mod/users.nix
	];

	boot.loader.grub.enable = true;
	boot.loader.grub.device = "/dev/nvme0n1";
	boot.loader.grub.useOSProber = true;
		
	hardware.bluetooth.enable = true;

	services.printing.enable = true;

	# Some programs need SUID wrappers, can be configured further or are
	# started in user sessions.
	# programs.mtr.enable = true;
	# programs.gnupg.agent = {
	#  enable = true;
	#  enableSSHSupport = true;
	# };

	# This value determines the NixOS release from which the default
	# settings for stateful data, like file locations and database versions
	# on your system were taken. It‘s perfectly fine and recommended to leave
	# this value at the release version of the first install of this system.
	# Before changing this value read the documentation for this option
	# (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
	system.stateVersion = "24.11"; # Did you read the comment?

}
