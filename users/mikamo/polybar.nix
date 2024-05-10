{ pkgs, ... }:
let
  polybar_launch_script = pkgs.writeShellScriptBin "polybar_launch" (builtins.readFile ./config/polybar/launch.sh);
in
{
  enable = true;
  package = pkgs.polybar.override {
    i3Support = true;
    alsaSupport = true;
    iwSupport = true;
    githubSupport = true;
    pulseSupport = true;
  };
  config = { }
    // import ./config/polybar/modules.nix
    // import ./config/polybar/usermodules.nix { inherit pkgs; }
    // import ./config/polybar/bar.nix
    // import ./config/polybar/color.nix
    // import ./config/polybar/settings.nix;
  script = "PATH=\$PATH:${pkgs.i3}/bin ${polybar_launch_script}/bin/polybar_launch";
}
