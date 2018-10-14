# dotfiles

### install things on macOS
1. homebrew https://brew.sh/
2. IntelliJ IDEA https://www.jetbrains.com/idea/download/#section=mac

#### terminal commands
1. brew install git
2. mkdir -p ~/dev/github-cb/
3. cd ~/dev/github-cb/
4. git clone git@github.com:chickenbane/dotfiles.git
5. cd dotfiles
6. ./macOs.sh



### setup

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



#### homebrew
1) brew tap cloudfoundry/tap
2) brew install bosh-cli
3) brew tap caskroom/cask
4) brew cask install virtualbox

### gcp cloud console
1) `git clone https://github.com/chickenbane/dotfiles.git`
2) `cd dotfiles`
3) `./gcp.sh`
