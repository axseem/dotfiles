{ config, lib, pkgs, inputs, ... }:

{
  services = {
    devmon.enable = true;
    gvfs.enable = true;
    udisks2.enable = true;
    dbus.enable = true;
    gnome.gnome-keyring.enable = true;
  };
  
  programs = {
    direnv.enable = true;
    dconf.enable = true;
    ssh.startAgent = true;

    fish = {
      enable = true;
      interactiveShellInit = ''
        set fish_greeting # Disable greeting
      '';
    };
  };

  virtualisation.docker.enable = true;
}