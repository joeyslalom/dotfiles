
# brew installed packages take precedence over system (git)
export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

#export SCALA_HOME=/Users/joeyt/Documents/dev/scala/scala-2.11.2
#export PATH=$PATH:$SCALA_HOME/bin

#export GOPATH=$HOME/gocode
#export CAMLIPATH=$HOME/Documents/dev/github/cb/camlistore/bin
#export PATH=$PATH:$GOPATH/bin:$CAMLIPATH

# needed for lint rules
export ANDROID_HOME=/Users/joey/Library/Android/sdk

export ANDROID_SDK=/Users/joey/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK/platform-tools

alias eb="vim ~/.bash_profile && source ~/.bash_profile"
alias git_rm_merged='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias docker_rm_untagged='docker rmi $(docker images -f "dangling=true" -q)'

#export PS1="\w $ "
# http://code-worrier.com/blog/git-branch-in-bash-prompt/
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/dev/github-cb/dotfiles/git-prompt.sh
source ~/dev/github-cb/dotfiles/git-completion.bash
export PROMPT_COMMAND='__git_ps1 "\w" "\\\$ "'


#docker
#source /usr/local/etc/bash_completion.d/docker

#google cloud sdk
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
source <(kubectl completion bash)

