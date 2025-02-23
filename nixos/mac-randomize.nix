{ pkgs, ... }:

{
  systemd.services.macchanger = {
    enable = true;
    description = "Change MAC address";
    wantedBy = [ "multi-user.target" ];
    after = [ "network.target" ];
    serviceConfig = {
      Type = "oneshot";
      ExecStart = "${pkgs.macchanger}/bin/macchanger -r wlp1s0f0";
      ExecStop = "${pkgs.macchanger}/bin/macchanger -p wlp1s0f0";
      RemainAfterExit = true;
    };
  };
}