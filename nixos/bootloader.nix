{ config, lib, pkgs, inputs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = false;
  boot.initrd.luks.devices."encrypted".device = "/dev/disk/by-uuid/bc25b9cc-47a3-4455-b501-07dc8cb3451b";
}