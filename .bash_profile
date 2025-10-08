# mac os defaults to zsh now
export BASH_SILENCE_DEPRECATION_WARNING=1

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# brew install git
GIT_BASH_COMPLETION=/opt/homebrew/etc/bash_completion.d
source $GIT_BASH_COMPLETION/git-prompt.sh
source $GIT_BASH_COMPLETION/git-completion.bash
PS1='\w$(__git_ps1 " (%s) ")\$ '

# brew install --cask gcloud-cli
export PATH=/opt/homebrew/share/google-cloud-sdk/bin:"$PATH"
source /opt/homebrew/share/google-cloud-sdk/completion.bash.inc
source /opt/homebrew/share/google-cloud-sdk/path.bash.inc

# brew install mise
eval "$(mise activate bash)"

# brew install --cask ghostty
rename_tab() {
    printf '\033]2;%s\007' "$(basename "$PWD")"
}
PROMPT_COMMAND='rename_tab'

# alias eb="vim ~/.bash_profile && source ~/.bash_profile"
# alias git_rm_merged='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
# alias docker_rm_untagged='docker rmi $(docker images -f "dangling=true" -q)'

#docker
#source /usr/local/etc/bash_completion.d/docker


# [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

#kubectl
#source <(kubectl completion bash)
