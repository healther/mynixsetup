{ config, pkgs, lib, ... }:

{
  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  time.timeZone = "Etc/UTC";
  i18n.defaultLocale = "en_US.UTF-8";

  networking.hostName = "beach";
  networking.wireless.enable = true;
  networking.wireless.networks = {
    "FRITZ!Box 7510 NW" = {
      psk = "67021236588387803321";
    };
  };

  services.openssh.enable = true;
}
