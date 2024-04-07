{ config, lib, pkgs, modulesPath, currentSystemName, ... }:
let
  cpuType = lib.mkDefault "amd";
in
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
  boot.kernelPackages = pkgs.linuxKernel.packages.linux_zen;


  #system config

  #envirnment
  environment.pathsToLink = [ "/libexec" ];

  #locale timezone
  time.timeZone = "Asia/Tokyo";
  i18n.defaultLocale = "ja_JP.UTF-8";

  #security
  security.polkit.enable = true;

  #network
  networking.hostName = currentSystemName; # Define your hostname.
  networking.networkmanager.enable = true; # Easiest to use and most distros use this by default.

  #common services
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  services.openssh.settings.PermitRootLogin = "yes";

  # Enable time synchronization.
  services.timesyncd.enable = true;

  # Enable suspend-to-RAM support.
  services.logind.extraConfig = ''
    HandlePowerKey=suspend
  '';

  system.stateVersion = "23.11"; # Did you read the comment?
}
