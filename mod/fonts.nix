{ config, pkgs, ... }:

{
	fonts.packages = with pkgs; [
		crimson-pro
		ibm-plex
		lato
		noto-fonts
		roboto
		roboto-mono
		roboto-serif
		roboto-slab
		source-han-code-jp
		source-han-mono
		source-han-sans-vf-otf
		source-han-serif-vf-otf
	];

	fonts.fontconfig.defaultFonts = {
		serif = [ "Roboto Serif" "Source Han Serif VF" ];
		sansSerif = [ "Roboto" "Source Han Sans VF" ];
		monospace = [ "Source Han Code JP" "Source Han Mono" ];
	};
}
