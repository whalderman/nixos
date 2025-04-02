{ config, ... }:

{
	programs = {
		git.enable = true;
		vim.enable = true;
		neovim.enable = true;
		nix-ld.enable = true;
		nix-ld.libraries = [
			# Add any missing dynamic libraries for unpackaged programs
			# here, NOT in environment.systemPackages
		];
		tmux.enable = true;
		tmux.keyMode = "vi";
		tmux.clock24 = true;

		# Some programs need SUID wrappers, can be configured further or are
		# started in user sessions.
		# mtr.enable = true;
		# gnupg.agent = {
		#	enable = true;
		#	enableSSHSupport = true;
		# };
	};
}
