{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    chromium
    firefox
    google-chrome
  ];
}
