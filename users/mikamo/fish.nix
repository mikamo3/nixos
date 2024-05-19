{ ... }: {
  programs.fish.enable = true;
  programs.fzf.enableFishIntegration = true;
  programs.fish.shellAliases = {
    ll = "exa -la";
    pbcopy = "xclip";
    pbpaste = "xclip -o";
  };
  programs.fish.interactiveShellInit = builtins.readFile ./config/fish/config.fish;
}
