{ config, pkgs, ... }:

{
	time.timeZone = "Asia/Tokyo";

	i18n.defaultLocale = "en_US.UTF-8";

	i18n.extraLocaleSettings = {
		LC_ADDRESS = "en_US.UTF-8";
		LC_IDENTIFICATION = "en_US.UTF-8";
		LC_MEASUREMENT = "ja_JP.UTF-8";
		LC_MONETARY = "ja_JP.UTF-8";
		LC_NAME = "en_US.UTF-8";
		LC_NUMERIC = "en_US.UTF-8";
		LC_PAPER = "ja_JP.UTF-8";
		LC_TELEPHONE = "ja_JP.UTF-8";
		LC_TIME = "en_US.UTF-8";
	};
	
	i18n.inputMethod = {
		enable = true;
		type = "ibus";
		ibus.engines = with pkgs.ibus-engines; [ mozc ];
	};
}