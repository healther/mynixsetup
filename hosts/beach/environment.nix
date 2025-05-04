{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    htop
    mosh
    python3
    traceroute
    vim
    wget
  ];
}
