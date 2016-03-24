#!/bin/sh

echo '> vundle'

VUNDLE_REPO=https://github.com/VundleVim/Vundle.vim.git
VUNDLE_PATH=~/.vim/bundle/Vundle.vim
VUNDLE_FILE=~/.vundles

if [[ ! -a $VUNDLE_PATH ]]
then
    git clone $VUNDLE_REPO $VUNDLE_PATH
fi

vim -u NONE -N -S $VUNDLE_FILE +PluginInstall +qall < /dev/tty
