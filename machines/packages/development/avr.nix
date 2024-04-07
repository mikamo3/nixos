{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    avrdude
    dfu-programmer
    dfu-util
  ];
}
