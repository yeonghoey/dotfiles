#!/bin/sh

# set zsh as default
chsh -s /bin/zsh

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
