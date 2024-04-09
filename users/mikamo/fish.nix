{ pkgs, ... }: {
  enable = true;
  plugins = [
    {
      name = "fish-fzf";
      src = fetchTarball {
        url = "https://github.com/PatrickF1/fzf.fish/archive/refs/tags/v10.3.tar.gz";
        sha256 = "1hqqppna8iwjnm8135qdjbd093583qd2kbq8pj507zpb1wn9ihjg";
      };
    }
  ];
  shellAliases = {
    ll = "exa -la";
    pbcopy = "xclip";
    pbpaste = "xclip -o";
  };
  interactiveShellInit = builtins.readFile ./config/fish/config.fish;
}
