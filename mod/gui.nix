{ config, ... }:

{
	# Enable the X11 windowing system.
	services.xserver.enable = true;

	# Enable the GNOME Desktop Environment.
	services.xserver.displayManager.gdm.enable = true;
	services.xserver.desktopManager.gnome.enable = true;
	services.gnome.sushi.enable = true;

	# Enable OpenGL
	hardware.graphics.enable = true;
	# needed by some Wine emulated programs, etc.
	hardware.graphics.enable32Bit = true;

	# Use NVidia's own open source kernel module.
	# Support is limited to the Turing and later architectures. Full list of 
	# supported GPUs is at: 
	# https://github.com/NVIDIA/open-gpu-kernel-modules#compatible-gpus 
	# Work GPU is a bit old and not supported, so we can't use this.
	hardware.nvidia.open = false;
	hardware.nvidia.nvidiaSettings = true;
	hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;

	# Load nvidia driver for Xorg and Wayland
	services.xserver.videoDrivers = [ "nvidia" ];

	# Modesetting is required.
	hardware.nvidia.modesetting.enable = true;

	# Nvidia power management. Experimental, and can cause sleep/suspend to fail.
	# Enable this if you have graphical corruption issues or application crashes after waking
	# up from sleep. This fixes it by saving the entire VRAM memory to /tmp/ instead 
	# of just the bare essentials.
	hardware.nvidia.powerManagement.enable = false;

	# Fine-grained power management. Turns off GPU when not in use.
	# Experimental and only works on modern Nvidia GPUs (Turing or newer).
	hardware.nvidia.powerManagement.finegrained = false;

}
