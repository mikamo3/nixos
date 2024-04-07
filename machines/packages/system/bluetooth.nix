{ useBluetooth ? true }:
{ lib, pkgs, ... }:
{

  hardware.bluetooth.enable = useBluetooth; # enables support for Bluetooth
  hardware.bluetooth.powerOnBoot = useBluetooth; # powers up the default Bluetooth controller on boot
  services.blueman.enable = useBluetooth;
}
