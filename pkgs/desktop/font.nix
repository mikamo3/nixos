{ inputs, config, lib, pkgs, ... }:
{

  fonts = {
    packages = with pkgs; [
      hackgen-nf-font
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-emoji
      font-awesome
    ];
  };
  # TODO:fontconfig
}
