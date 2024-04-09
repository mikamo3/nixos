{ pkgs, inputs, ... }:
{
  users.users.mikamo = {
    isNormalUser = true;
    extraGroups = [ "wheel" "docker" ];
    shell = pkgs.fish;
    packages = with pkgs; [
    ];
  };
}
