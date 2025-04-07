{ config, pkgs, ... }:

{
	nixpkgs.config.allowUnfree = true;

	# List packages installed in system profile. To search, run:
	# $ nix search wget
	environment.systemPackages = with pkgs; [
		aseprite
		biome # biomejs
		brave
		bun
		chromium
		clickhouse
		cpufrequtils
		deno
		discord
		distrobox
		docker
		expressvpn
		firebase-tools
			zulu # OpenJDK
		gh
		ghostty
		gimp
		git
		gnome-tweaks
		go
		google-chrome
		google-cloud-sdk
		#handbrake
		imagemagick
		inkscape
		jq
		libgcc
		libreoffice
		libwebp
		minikube
		nodejs_23
			#grpc-tools
			pnpm_10
		pngquant
		podman
		python3
		re2
		ripgrep
		rustup
		signal-desktop
		#static-web-server
		stripe-cli
		typescript
		unzip
		vlc
		vscode
		wget
		zig
	];

	services.expressvpn.enable = true;
}
