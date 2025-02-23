{ config, lib, pkgs, inputs, ... }:

{
  users.users.axseem = {
    shell = pkgs.fish;
    isNormalUser = true;
    extraGroups = [ "wheel" "video" "dialout" "networkmanager" "docker" ];
    packages = with pkgs; [
      brave
      freecad
      kicad
      protonvpn-gui
      nemo
      gimp
      obs-studio
      vscodium
      signal-desktop
      telegram-desktop
      kitty

      git
      neovim
      ffmpeg
      brightnessctl
      playerctl
      grim
      slurp
      wl-clipboard
      unzip
      zip
      exiftool
      openssl
      btop

      wofi
      pavucontrol
      waybar
      mako

      clang
      clang-tools
      lld
      cmake
      gcc
      go
      gotools
      bun
      docker-compose
      postgresql
      delve
      cargo
      rustc
    ];
  };
}