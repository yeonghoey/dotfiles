#!/bin/sh

if [ "$(uname -s)" != "Darwin" ]; then
  exit 0
fi

# http://apple.stackexchange.com/questions/111534/iterm2-doesnt-read-com-googlecode-iterm2-plist
defaults read com.googlecode.iterm2
