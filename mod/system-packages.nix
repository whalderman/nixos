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
		imagemagick
		inkscape
		jq
		libgcc
		libreoffice
		libwebp
		minikube
		nodejs_23
			grpc-tools
			pnpm_10
		pngquant
		python3
		qbittorrent
		re2
		ripgrep
		rustup
		signal-desktop
		stripe-cli
		tmux
		typescript
		unzip
		vim
		vlc
		vscode
		wget
		zig
	];

	services.expressvpn.enable = true;
}
