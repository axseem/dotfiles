{ config, lib, pkgs, inputs, ... }:

{
  hardware.asahi = {
    useExperimentalGPUDriver = true;
    peripheralFirmwareDirectory = ./firmware;
    setupAsahiSound = true;
  };
}