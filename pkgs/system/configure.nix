{ config, lib, pkgs, modulesPath, currentSystemName, ... }:
{
  #nix configure
  nix = {
    settings = {
      keep-outputs = true;
      keep-derivations = true;
      experimental-features = [ "nix-command" "flakes" ];
    };
  };

  nixpkgs.config.allowUnfree = true;
  #boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;


  #systemd
  services.logind.extraConfig = ''
    HandlePowerKey=suspend
  '';
  #envirnment
  environment.pathsToLink = [ "/libexec" ];
  #locale timezone
  time.timeZone = "Asia/Tokyo";
  i18n.defaultLocale = "ja_JP.UTF-8";
  #security
  security.polkit.enable = true;
  networking.hostName = currentSystemName; # Define your hostname.
  networking.networkmanager.enable = true; # Easiest to use and most distros use this by default.

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  services.openssh.settings.PermitRootLogin = "yes";
  services.timesyncd.enable = true;

  #locale

}
