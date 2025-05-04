{ config, pkgs, ... }:

{
  # users.users.youruser = {
  #   isNormalUser = true;
  #   extraGroups = [ "wheel" ];
  #   password = "yourPasswordHash";
  #   shell = pkgs.zsh;
  # };
  users.users.controller = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user.
    openssh.authorizedKeys.keys = [ "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDGEfN13AMiRVe/H58gvbgPeHi8FMXx2915bSquYh/9V80XQpRJySgvpexKDg+juG3K2D2unzNEJ+Ft6zEzHmxls67ffmsxV8SPGM/PPaVnBoifgMOIihVYGXcTTJtTWZguaj/Zd8zAL0wS1gy2oQp/WzeGwuL5ZHPljnQ88azz5ClXUvBC0MZcFla8vG5FJJiYouzYdvdKevbLmp7v+0islv0oy894SRTAbE7ILkBjr4WnoEoglAomVvy0T06ZmgSbcFFuCiyGSgqddG0wLDp/6A7woKVejS1+J8W0Ckifpve5aV1Dd0xzE60ygK9/9Biupu6RwtdYIs/HSo2QX1sDoBsXw35g3WjxyAxqOImIFJA8nwrSQ9UPHUy0imMQjHgKts3xDftHBODji7gSebqnM8l6BZ7W+GMf6g30aqegRRYcm3A/nlcKBNMmzGhT0KhSwhCPr3oYXDA2t4egm9Vcv36dRjofR1mj1DdqwqVFpTosE4BhFhLX+Vf+I9YI7Ps47K6FXF+E2hXH98bhLPIxEsTfhYYx00T4vxWo8Pp1FswkmdA9KNuHN0T6AtwC1PWRS2CTeJj3d8OjWHA1S6w6oLkrTEUisCAa/DIZRhR23eRxwnlPzZq0hxKPKSkvkFS8+pPqcFNP4lkXVEWslC1yqROidHfCQVKaehspxyCImQ== healther@MacBook-Air-2.fritz.box" ];
  };
}
