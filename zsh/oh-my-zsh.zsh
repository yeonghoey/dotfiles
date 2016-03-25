export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM="$ZSH/custom"

ZSH_THEME="avit"
plugins=(git zsh-autosuggestions)



# ----------------------------------------------------------------------------
OHMYZSH_REPO=git://github.com/robbyrussell/oh-my-zsh.git
if [[ ! -a $ZSH ]]
then
    git clone $OHMYZSH_REPO $ZSH
fi

AUTOSUGGESTIONS_REPO=git://github.com/zsh-users/zsh-autosuggestions
AUTOSUGGESTIONS_PATH=$ZSH_CUSTOM/plugins/zsh-autosuggestions
if [[ ! -a $AUTOSUGGESTIONS_PATH ]]
then
    git clone $AUTOSUGGESTIONS_REPO $AUTOSUGGESTIONS_PATH
fi
source $ZSH/oh-my-zsh.sh
# ----------------------------------------------------------------------------

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'
bindkey '^ ' autosuggest-accept


# TODO: move to other files
eval "$(thefuck --alias)"
eval $(docker-machine env default)

alias rebaseom="git fetch origin master && git rebase -i --autosquash origin/master"
alias rebuild='find . -name "*.class" | xargs rm; ./sbt compile'
