{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    keepassxc
    firejail
  ];
}



