# dotfiles

### install things on macOS
1. homebrew https://brew.sh/
2. IntelliJ IDEA https://www.jetbrains.com/idea/download/#section=mac

#### git clone
1. brew install git
2. mkdir -p ~/git
3. cd ~/git
4. git clone https://github.com/joeyslalom/dotfiles.git
5. cd dotfiles
6. ./macOs.sh

### New SSH key
1. ssh-keygen -t ed25519 -C "your_email@example.com"
2. pbcopy < ~/.ssh/id_ed25519.pub
3. GitHub -> SSH and GPG keys -> New SSH key

#### git commit

1. mkdir ~/.ssh
2. ln -sf ~/dev/github-cb/dotfiles/sshconfig ~/.ssh/config


#### javalife

1. brew tap caskroom/versions
2. brew cask install java8


### gcp cloud console
1) `git clone https://github.com/chickenbane/dotfiles.git`
2) `cd dotfiles`
3) `./gcp.sh`
