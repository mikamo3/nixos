{ pkgs, ... }:
with pkgs;
stdenv.mkDerivation rec{
  name = "plemoljp";
  version = "1.7.1";

  src = fetchzip {
    url = "https://github.com/yuru7/PlemolJP/releases/download/v${version}/PlemolJP_v${version}.zip";
    hash = "sha256-YH1c/2jk8QZNyPvzRZjxNHyNeci9tjn+oOW8xLd8kjk=";
    stripRoot = false;
  };

  installPhase = ''
    install -Dm644 PlemolJP/*.ttf -t $out/share/fonts/truetype/PlemolJP
    install -Dm644 PlemolJPConsole/*.ttf -t $out/share/fonts/truetype/PlemolJPConsole
    install -Dm644 PlemolJP35/*.ttf -t $out/share/fonts/truetype/PlemolJP35
    install -Dm644 PlemolJP35Console/*.ttf -t $out/share/fonts/truetype/PlemolJP35Console
  '';

  meta = with lib; {
    description = "Programming font synthesized from IBM Plex Mono and IBM Plex Sans J";
    homepage = "https://github.com/yuru7/PlemolJP";
    license = licenses.ofl;
    platforms = platforms.all;
  };
}
