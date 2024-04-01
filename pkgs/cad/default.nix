{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    kicad
    freecad
    librecad
  ];
}
