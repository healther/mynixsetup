{ config, pkgs, lib, ... }:

{
  system.stateVersion = "24.05";

  imports = [
    ./hardware-configuration.nix
    ./system.nix
    ./users.nix
    ./environment.nix
    ../../modules-config/clickhouse.nix
    ../../modules-config/gitlab.nix
    ../../modules-config/grafana.nix
    ../../modules-config/tailscale.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
