{ ... }: {
  enable = true;
  userName = "mikamo3";
  userEmail = "kamo3proj@gmail.com";
  aliases = {
    lol = "log --oneline";
    st = "status";
    co = "checkout";
    sp = "stash pop";
    ss = "stash save";
    cob = "checkout -b";
    bd = "!git branch --merged master | grep -v -e master -e develop | sed -e 's/^ *\\* *//'| xargs -r -I% git branch -d %";
    rbd = "!git branch -r --merged master | grep -v -e master -e develop | sed -e 's% *origin/%%' | xargs -r -I% git push --delete origin %";
  };
  extraConfig = {
    color.ui = true;
    init.defaultBranch = "main";
  };
}
