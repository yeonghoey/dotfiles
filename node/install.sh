#!/bin/bash

if test ! $(which 'git-open'); then
  sudo npm install -g git-open
fi

if test ! $(which 'vmd'); then
  sudo npm install -g vmd
fi
