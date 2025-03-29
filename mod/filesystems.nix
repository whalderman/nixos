{ config, ... }:

{
	fileSystems."/run/media/warrenh/Tera" = {
		device = "/dev/disk/by-uuid/9ebac365-79f0-48dc-92db-48b8edd0cce7";
		fsType = "btrfs";
	};
}
