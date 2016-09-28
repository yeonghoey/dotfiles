#!/bin/bash

set -e

fonts_repo=https://github.com/powerline/fonts.git
fonts_path="$HOME/.fonts"

if [[ ! -a "$fonts_path" ]]; then
  git clone "$fonts_repo" "$fonts_path"
  "$fonts_path/install.sh"
fi
