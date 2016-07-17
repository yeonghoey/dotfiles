#!/usr/bin/env bash

echo '> Tmux Plugin Manager'

TPM_REPO="https://github.com/tmux-plugins/tpm"
TPM_PATH="$HOME/.tmux/plugins/tpm"

if [[ ! -a $TPM_PATH ]]; then
  git clone $TPM_REPO $TPM_PATH
fi
