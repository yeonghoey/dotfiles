#!/bin/bash

echo '> vundle'

VUNDLE_REPO=https://github.com/VundleVim/Vundle.vim.git
VUNDLE_PATH=~/.vim/bundle/Vundle.vim
VUNDLE_FILE=~/.vundles

if [[ ! -a $VUNDLE_PATH ]]
then
  git clone $VUNDLE_REPO $VUNDLE_PATH
fi

# Install Plugins
vim -u NONE -N -S $VUNDLE_FILE +PluginInstall +qall < /dev/tty

# YouCompleteMe Plugin requires addtional step.
YOUCOMPLETEME_PATH=~/.vim/bundle/YouCompleteMe
if [[ -d "$YOUCOMPLETEME_PATH" ]]; then
  pushd $YOUCOMPLETEME_PATH
  ./install.py
  popd
fi
