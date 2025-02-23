{
  description = "axseem's NixOS Config";

  inputs = {
    pkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
  };

  outputs = { self, pkgs, home-manager, ... } @inputs: {
    nixosConfigurations.mac = pkgs.lib.nixosSystem {
      system = "aarch64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        ./apple-silicon-support

        ./bluetooth.nix
        ./bootloader.nix
        ./configuration.nix
        ./display-manager.nix
        ./fonts.nix
        ./gc.nix
        ./hardware-asahi.nix
        ./hardware-configuration.nix
        ./home-manager.nix
        ./hyprland.nix
        ./internationalisation.nix
        ./mac-randomize.nix
        ./networking.nix
        ./nix-settings.nix
        ./security.nix
        ./services.nix
        ./swap.nix
        ./users.nix
	      home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.axseem = import ./home.nix;
        }
      ];
    };
  };
}
