{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    fzf
    unzip
    zip
    p7zip
  ];
}
