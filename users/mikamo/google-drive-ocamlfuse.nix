{ username }: { config, pkgs, lib, ... }: {

  home.activation.createWritableDirectory = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    if [ ! -d ${config.home.homeDirectory}/google-drive ]; then
      echo "Creating ${config.home.homeDirectory}/google-drive"
      mkdir -p ${config.home.homeDirectory}/google-drive
      chmod 700 ${config.home.homeDirectory}/google-drive
    fi
  '';
  systemd.user.services.google-drive = {
    Unit = {
      Description = "Google Drive FUSE mount";
      After = [ "network.target" ];
    };
    Service = {
      Type = "forking";
      ExecStart = "${pkgs.google-drive-ocamlfuse}/bin/google-drive-ocamlfuse ${config.home.homeDirectory}/google-drive";
      ExecStop = "${pkgs.coreutils}/bin/fusermount -u ${config.home.homeDirectory}/google-drive";
      Restart = "on-failure";
    };
    Install = {
      WantedBy = [ "default.target" ];
    };
  };
}
