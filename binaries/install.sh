#!/bin/bash

set -e
mkdir -p "$LOCALBIN"

if [[ ! -e "$LOCALBIN/terraform" ]]; then
  source "$DOTFILES_ROOT/binaries/terraform.sh"
fi

if [[ ! -e "$LOCALBIN/trans" ]] ; then
  source "$DOTFILES_ROOT/binaries/trans.sh"
fi
