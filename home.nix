{
  pkgs,
  inputs,
  ...
}:

{
  # Hom Manager needs a bit of information about you and the paths it should
  # manage.
  programs.neovim.enable = true;
  # Me
  home.username = "matt";
  home.homeDirectory = "/home/matt";
  # Don't change
  home.stateVersion = "25.05"; # Please read the comment before changing.
  # Standalone Packages for user
  home.packages = with pkgs; [
    discord
  ];

  # Environment and Dependencies
  xdg = {
    enable = true;
  };


  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
