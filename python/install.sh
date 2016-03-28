#!/bin/sh
if test ! $(which virtualenv)
then
  sudo pip install --no-cache-dir virtualenv
fi

if test ! $(which pygmentize)
then
  sudo pip install --no-cache-dir pygments
fi


PYTHON_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -a $PYTHON_PATH/venv ]]
then
  virtualenv $PYTHON_PATH/venv
  source $PYTHON_PATH/venv/bin/activate

  pip install --no-cache-dir -r $PYTHON_PATH/requirements.txt
  python -m nltk.downloader wordnet

  deactivate
fi


