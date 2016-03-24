# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

eval "$(thefuck --alias)"
eval $(docker-machine env default)

alias rebaseom="git fetch origin master && git rebase -i --autosquash origin/master"
alias rebuild='find . -name "*.class" | xargs rm; ./sbt compile'
