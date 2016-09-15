#!/bin/bash

set -e

SPACEMACS_REPO=https://github.com/syl20bnr/spacemacs
SPACEMACS="$HOME/.emacs.d"
if [[ ! -a $SPACEMACS ]]
then
    git clone $SPACEMACS_REPO $SPACEMACS
fi
