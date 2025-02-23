{ config, lib, pkgs, inputs, ... }:

{
  networking.hostName = "mac";

  networking.networkmanager.enable = true;
}