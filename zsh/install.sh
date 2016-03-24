#!/bin/sh

OHMYZSH_REPO=git://github.com/robbyrussell/oh-my-zsh.git

if [[ ! -a $OHMYZSH_PATH ]]
then
    git clone $OHMYZSH_REPO $ZSH
fi

# set zsh as default
chsh -s /bin/zsh
