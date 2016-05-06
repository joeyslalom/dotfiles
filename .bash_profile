
# brew installed packages take precedence over system (git)
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

#export SCALA_HOME=/Users/joeyt/Documents/dev/scala/scala-2.11.2
#export PATH=$PATH:$SCALA_HOME/bin

export GOPATH=$HOME/gocode
export CAMLIPATH=$HOME/Documents/dev/github/cb/camlistore/bin
export PATH=$PATH:$GOPATH/bin:$CAMLIPATH


alias eb="vim ~/.bash_profile && source ~/.bash_profile"

#export PS1="\w $ "
# http://code-worrier.com/blog/git-branch-in-bash-prompt/
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/Documents/dev/github/cb/dotfiles/git-prompt.sh
source ~/Documents/dev/github/cb/dotfiles/git-completion.bash
export PROMPT_COMMAND='__git_ps1 "\w" "\\\$ "'
