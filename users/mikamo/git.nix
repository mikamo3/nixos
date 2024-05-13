{ ... }: {
  programs.git.enable = true;
  programs.git.userName = "mikamo3";
  programs.git.userEmail = "kamo3proj@gmail.com";
  programs.git.aliases = {
    lol = "log --oneline";
    st = "status";
    co = "checkout";
    sp = "stash pop";
    ss = "stash save";
    cob = "checkout -b";
    bd = "!git branch --merged master | grep -v -e master -e develop | sed -e 's/^ *\\* *//'| xargs -r -I% git branch -d %";
    rbd = "!git branch -r --merged master | grep -v -e master -e develop | sed -e 's% *origin/%%' | xargs -r -I% git push --delete origin %";
  };
  programs.git.extraConfig = {
    color.ui = true;
    init.defaultBranch = "main";
  };
}
