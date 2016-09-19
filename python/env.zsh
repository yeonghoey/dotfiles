export VIRTUALENVWRAPPER_PYTHON=$(which python)
export WORKON_HOME="$HOME/venvs"
mkdir -p "$WORKON_HOME"
source "$(which virtualenv)wrapper.sh"
