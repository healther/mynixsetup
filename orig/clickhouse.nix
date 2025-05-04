{ config, pkgs, ... }:

{
  services.clickhouse.enable = true;

  environment.etc."clickhouse-server/config.d/custom-config.xml".text = ''
    <clickhouse>
      <listen_host>0.0.0.0</listen_host>
      <tcp_port>9000</tcp_port>
      <http_port>8123</http_port>
    </clickhouse>
  '';

  environment.etc."clickhouse-server/users.d/custom-users.xml".text = ''
    <clickhouse>
      <users>
        <default>
          <password>yourPassword</password>
          <networks>
            <ip>::/0</ip>
          </networks>
          <profile>default</profile>
        </default>
      </users>
    </clickhouse>
  '';
}
