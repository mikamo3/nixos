{ pkgs, ... }:
with pkgs;
stdenv.mkDerivation rec{
  name = "line-seed-jp";
  version = "1.0.0";

  src = fetchzip {
    url = "https://seed.line.me/src/images/fonts/LINE_Seed_JP.zip";
    hash = "sha256-SQVBCp0ZKuQMJPb2f58BMccOpXm17jv/Oaj2KtlYFWo=";
    stripRoot = false;
  };

  installPhase = ''
    cd "$(find -maxdepth 1 -mindepth 1 -type d -name 'LINESeed*' -print)"
    install -Dm644 -t "$out/share/fonts/line-seed-otf" Desktop/OTF/*.otf
  '';

  meta = with lib; {
    description = "LINE Seed is LINE's new font, created based on LINE's convenience and friendly identity. It brings a fresh and unique style to your programming environment.";
    homepage = "https://seed.line.me/";
    license = licenses.ofl;
    platforms = platforms.all;
  };
}
