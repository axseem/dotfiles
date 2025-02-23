{ pkgs, lib, ... }:

{
  users.users.root.hashedPassword = "!";
  security.apparmor = {
    enable = true;
    packages = with pkgs; [
      apparmor-utils
      apparmor-profiles
    ];
  };
  services.fail2ban.enable = true;
  security.pam.services.hyprlock = {};
  security.pam.services.lightdm.enableGnomeKeyring = true;
  
  environment.systemPackages = with pkgs; [
    vulnix       #scan command: vulnix --system
    chkrootkit   #scan command: sudo chkrootkit
  ];
}
