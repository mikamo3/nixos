{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    ffmpeg
    imagemagick
    gpick
  ];
}


