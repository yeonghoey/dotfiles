# shortcut for making and switch virtualenv
alias v='workon $(basename $(git rev-parse --show-toplevel || echo "."))'
alias mkv='mkvirtualenv $(basename $(git rev-parse --show-toplevel || echo "."))'
alias rmv='rmvirtualenv $(basename $(git rev-parse --show-toplevel || echo "."))'
