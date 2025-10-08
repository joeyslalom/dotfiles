
eval "$(/opt/homebrew/bin/brew shellenv)"

# brew install git
#Bash completion has been installed to:
#  /opt/homebrew/etc/bash_completion.d
GIT_BASH_COMPLETION=/opt/homebrew/etc/bash_completion.d
source $GIT_BASH_COMPLETION/git-prompt.sh
source $GIT_BASH_COMPLETION/git-completion.bash
export PROMPT_COMMAND='__git_ps1 "\w" "\\\$ "'

export BASH_SILENCE_DEPRECATION_WARNING=1


# brew installed packages take precedence over system (git)
#export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# alias eb="vim ~/.bash_profile && source ~/.bash_profile"
# alias git_rm_merged='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
# alias docker_rm_untagged='docker rmi $(docker images -f "dangling=true" -q)'

#docker
#source /usr/local/etc/bash_completion.d/docker

#google cloud sdk
#source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'
#source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'

# [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

#kubectl
#source <(kubectl completion bash)

