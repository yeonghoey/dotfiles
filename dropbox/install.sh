#!/bin/bash

# Only on Linux, not installed
if [[ "$(uname -s)" != "Darwin" && ! -d "$HOME/Dropbox" ]]; then
  cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
  ~/.dropbox-dist/dropboxd
fi
