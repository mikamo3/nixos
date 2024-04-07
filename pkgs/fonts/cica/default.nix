{ pkgs, ... }:
with pkgs;
stdenv.mkDerivation rec{
  name = "cica";
  version = "5.0.3";

  src = fetchzip {
    url = "https://github.com/miiton/Cica/releases/download/v${version}/Cica_v${version}.zip";
    hash = "sha256-BtDnfWCfD9NE8tcWSmk8ciiInsspNPTPmAdGzpg62SM=";
    stripRoot = false;
  };

  installPhase = ''
    install -Dm644 *.ttf -t $out/share/fonts/Cica
  '';

  meta = with lib; {
    description = "Programming font designed with focus on legibility and ease of use";
    homepage = "https://github.com/miiton/Cica";
    changelog = "https://github.com/miiton/Cica/v${version}/CHANGELOG.md";
    license = licenses.mit;
    platforms = platforms.all;
  };
}
