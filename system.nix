{ inputs, config, lib, pkgs, modulesPath, ... }:

{


  nixpkgs.config.allowUnfree = true;
  hardware.cpu.amd.updateMicrocode = true;

  #boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxKernel.packages.linux_zen;
  #nix configure
  nix = {
    settings = {
      keep-outputs = true;
      keep-derivations = true;
      experimental-features = [ "nix-command" "flakes" ];
    };
  };

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

  system.stateVersion = "23.11"; # Did you read the comment?
}
