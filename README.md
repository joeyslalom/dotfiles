# dotfiles

1) Get two factor setup
2) Get ssh keys added to account
3) Generate "personal access token"

Now you can do a git push.  Woot.

git completion comes from
https://github.com/git/git/blob/master/contrib/completion/git-completion.bash

which i got from 
https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks

git remote set-url origin git@github.com-cb:chickenbane/dotfiles.git

ln -s ~/dev/github-cb/dotfiles/sshconfig config

### set things up on MacOs
1) mkdir -p ~/dev/github-cb/
2) cd ~/dev/github-cb/
3) git clone git@github.com:chickenbane/dotfiles.git

### open project in IntelliJ Terminal
*  $pwd = ~/dev/github-cb/dotfiles 
* `./macOs.sh`

### gcp cloud console
1) `git clone https://github.com/chickenbane/dotfiles.git`
2) `cd dotfiles`
3) `./gcp.sh`