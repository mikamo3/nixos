{ pkgs, ... }:
with pkgs;
stdenv.mkDerivation rec{
  name = "plemoljp";
  version = "1.7.1";

  src = fetchzip {
    url = "https://github.com/yuru7/PlemolJP/releases/download/v${version}/PlemolJP_NF_v${version}.zip";
    hash = "sha256-UBuHR7A8cM9a6nvmraC9F1bO6SWgPpN65unQixL58qg=";
    stripRoot = false;
  };

  installPhase = ''
    install -Dm644 PlemolJP_NF_v${version}/PlemolJPConsole_NF/*.ttf -t $out/share/fonts/truetype/PlemolJPConsole_NF
    install -Dm644 PlemolJP_NF_v${version}/PlemolJP35Console_NF/*.ttf -t $out/share/fonts/truetype/PlemolJP35Console_NF
  '';

  meta = with lib; {
    description = "Programming font synthesized from IBM Plex Mono and IBM Plex Sans JP";
    homepage = "https://github.com/yuru7/PlemolJP";
    license = licenses.ofl;
    platforms = platforms.all;
  };
}
