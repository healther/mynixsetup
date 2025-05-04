{ config, pkgs, ... }:

{
  services.grafana = {
    enable = true;
    settings = {
      server = {
        http_addr = "::";
        http_port = 3000;
        domain = "192.168.178.48";
        serve_from_sub_path = true;
      };
    };
  };

  environment.systemPackages = with pkgs; [ grafana ];
}
