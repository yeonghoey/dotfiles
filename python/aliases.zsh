# shortcut for making and switch virtualenv
alias v='workon $(basename $(git rev-parse --show-toplevel || echo "."))'
alias mkv='mkvirtualenv $(basename $(git rev-parse --show-toplevel || echo "."))'
