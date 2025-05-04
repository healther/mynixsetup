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
    zsh
  ];

  environment.variables = {
    TERM="xterm-256color";
  };

  programs.zsh.enable = true;
}
