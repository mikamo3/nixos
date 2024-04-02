{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    virt-manager
  ];
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;
}



