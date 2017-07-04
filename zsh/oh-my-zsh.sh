export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM="$ZSH/custom"

ZSH_THEME='afowler'
plugins=(git colorize osx zsh-navigation-tools \
    zsh-syntax-highlighting) # syntax-highlighting should be at last

# ----------------------------------------------------------------------------
OHMYZSH_REPO=git://github.com/robbyrussell/oh-my-zsh.git
if [[ ! -a $ZSH ]]
then
    git clone $OHMYZSH_REPO $ZSH
fi

SYNTAXHIGHLIGHTING_REPO=https://github.com/zsh-users/zsh-syntax-highlighting.git
SYNTAXHIGHLIGHTING_PATH=$ZSH_CUSTOM/plugins/zsh-syntax-highlighting
if [[ ! -a $SYNTAXHIGHLIGHTING_PATH ]]
then
    git clone $SYNTAXHIGHLIGHTING_REPO $SYNTAXHIGHLIGHTING_PATH
fi

source $ZSH/oh-my-zsh.sh
# ----------------------------------------------------------------------------
