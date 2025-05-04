{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    mosh
    python3
    traceroute
    vim
    wget
  ];
}
