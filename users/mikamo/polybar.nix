{ wan_interface }: { pkgs, ... }:
let
  polybar_launch_script = pkgs.writeShellScriptBin "polybar_launch" (builtins.readFile ./config/polybar/launch.sh);
in
{
  services.polybar.enable = true;
  services.polybar.package = pkgs.polybar.override {
    i3Support = true;
    alsaSupport = true;
    iwSupport = true;
    githubSupport = true;
    pulseSupport = true;
  };
  services.polybar.config = { }
    // import ./config/polybar/modules.nix
    // import ./config/polybar/usermodules.nix { inherit pkgs; }
    // import ./config/polybar/bar.nix
    // import ./config/polybar/color.nix
    // import ./config/polybar/settings.nix;
  services.polybar.script = "NET_INTERFACE=${wan_interface} PATH=/run/current-system/sw/bin:\$PATH  ${polybar_launch_script}/bin/polybar_launch ";
}

