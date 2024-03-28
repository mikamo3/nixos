{ inputs, config, lib, pkgs, ... }:

{
  networking.hostName = "kamo3work"; # Define your hostname.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  services.openssh.settings.PermitRootLogin = "yes";
  services.timesyncd.enable = true;
}
