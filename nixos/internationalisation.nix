{ pkgs, ... }:

{
  i18n.supportedLocales = [
    "en_US.UTF-8/UTF-8"
    "uk_UA.UTF-8/UTF-8"
    "ru_RU.UTF-8/UTF-8"
  ];
  
  i18n.defaultLocale = "en_US.UTF-8";

  services.xserver = {
    xkb.layout = "us,ua,ru";
    xkb.options = "grp:alt_shift_toggle";
  };

  time.timeZone = "Europe/Prague";

  environment.systemPackages = with pkgs; [
    nuspell
    hyphen
    hunspell
    hunspellDicts.en_US
    hunspellDicts.uk_UA
    hunspellDicts.ru_RU
  ];
}