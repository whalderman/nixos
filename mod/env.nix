{ config, ... }:

{
	environment.variables = {
		BIOME_BINARY = "/run/current-system/sw/bin/biome";
		EDITOR = "nvim";
		VISUAL = "nvim";
	};
}
