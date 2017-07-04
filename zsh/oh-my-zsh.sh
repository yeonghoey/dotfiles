export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM="$ZSH/custom"

ZSH_THEME='afowler'
plugins=(git colorize osx zsh-navigation-tools)

# ----------------------------------------------------------------------------
OHMYZSH_REPO=git://github.com/robbyrussell/oh-my-zsh.git
if [[ ! -a $ZSH ]]
then
    git clone $OHMYZSH_REPO $ZSH
fi
source $ZSH/oh-my-zsh.sh
# ----------------------------------------------------------------------------
